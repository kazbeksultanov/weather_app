import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:localized_string/localized_string.dart';
import 'package:optional/optional.dart';

import 'bloc.dart';
import 'collections.dart';
import 'data.dart';

typedef OnFormSubmitCallback = Function(
  Map<String, FormValue> values,
  String actionName,
);

typedef FormFieldPredicate = bool Function(Map<String?, FormValue> values);

class FormsBloc extends Bloc<FormsEvent, FormsState> {
  final bool initialIsValid;
  final bool validateOnUpdate;
  final bool validateOnFocusChange;
  final Duration onUpdateDebounceDuration;
  final OnFormSubmitCallback? onSubmit;

  FormsBloc({
    this.initialIsValid = false,
    this.validateOnUpdate = true,
    this.validateOnFocusChange = true,
    this.onUpdateDebounceDuration = const Duration(milliseconds: 300),
    this.onSubmit,
  }) : super(FormsState(formIsValid: initialIsValid)) {
    on<OnAddInput>(_mapOnAddInput);
    on<OnRemoveInput>(_mapOnRemoveInput);
    on<OnSubmit>(_mapOnSubmit);
    on<OnUpdateValue>(_mapOnUpdateValue);
    on<OnRewriteValue>(_mapOnRewriteValue);
    on<OnFieldError>(_mapOnFieldError);
    on<OnFieldsError>(_mapOnFieldsError);
    on<OnFieldClearError>(_mapOnFieldClearError);
    on<OnClearAllErrors>(_mapOnClearAllErrors);
    on<OnValidateForm>(_mapOnValidateForm);
    on<OnValidateField>(_mapOnValidateField);
    on<OnUpdateInputOffset>(_mapOnUpdateInputOffset);
    on<OnRewriteFormValues>(_mapOnUpdateFormValues);
    on<OnRewriteFormValuesFieldEmpty>(_mapOnUpdateFormValuesFieldEmpty);
    on<OnRewriteValueFinished>(_mapOnRewriteValueFinished);
    on<OnFieldFocus>(_mapOnFieldFocus);
  }

  AppFormFieldState? _cloneFieldState<T>(
    String fieldName,
    FormsEvent event, {
    FormValue<T>? value,
    FormValue<T>? rewrittenValue,
    Optional<LocalizedString>? errorMessage,
    bool? isEnabled,
    Offset? offset,
  }) {
    if (state.fieldStates.containsKey(fieldName)) {
      return state.fieldStates[fieldName]!.copyWith(
        event,
        value: value,
        rewrittenValue: rewrittenValue,
        errorMessage: errorMessage,
        isEnabled: isEnabled,
        offset: offset,
      );
    } else {
      return null;
    }
  }

  bool _isFormValid(Iterable<AppFormFieldState?> fields) {
    for (final field in fields) {
      for (final validator in field!.validators) {
        if (!validator.isValid(field.value)) {
          return false;
        }
      }
    }

    return true;
  }

  Future<void> _mapOnAddInput(OnAddInput event, Emitter<FormsState> emit) async {
    final focusNode = FocusNode();

    focusNode.addListener(() {
      if (validateOnFocusChange && !focusNode.hasFocus) {
        add(
          OnValidateField(
            fieldName: event.fieldName,
            requestFocusOnError: false,
          ),
        );
      }
    });

    emit(state.copyWith(
      event,
      [event.fieldName],
      fieldStates: cloneMapAndAdd(
        state.fieldStates,
        event.fieldName,
        AppFormFieldState(
          value: _retrieveFieldValue(event.fieldName, event.value)!,
          validators: event.validators,
          focusNode: focusNode,
          visibleRule: event.visibleRule,
          enableRule: event.enableRule,
          event: event,
          key: GlobalKey(),
        ),
      ),
      removedFieldStates: cloneMapAndRemove(
        state.removedFieldStates,
        event.fieldName,
      ),
    ));
  }

  FormValue? _retrieveFieldValue(String fieldName, FormValue? initialValue) {
    if (state.removedFieldStates.containsKey(fieldName)) {
      return state.removedFieldStates[fieldName]!.value;
    } else {
      return initialValue;
    }
  }

  Future<void> _mapOnRemoveInput(OnRemoveInput event, Emitter<FormsState> emit) async {
    if (event.saveState) {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndRemove(
          state.fieldStates,
          event.fieldName,
        ),
        removedFieldStates: cloneMapAndAdd(
          state.removedFieldStates,
          event.fieldName,
          state.fieldStates[event.fieldName]!,
        ),
      ));
    } else {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndRemove(
          state.fieldStates,
          event.fieldName,
        ),
        removedFieldStates: cloneMapAndRemove(
          state.removedFieldStates,
          event.fieldName,
        ),
      ));
    }
  }

  Future<void> _mapOnSubmit(OnSubmit event, Emitter<FormsState> emit) async {
    await _mapOnValidateForm(OnValidateForm(tags: event.tags), emit);

    if (_isValid()) {
      WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

      final states = state.fieldStates;
      final result = states.map((key, value) => MapEntry(key, value.value));

      if (onSubmit != null) {
        onSubmit!(result, event.actionName);
      }
    }
  }

  bool _isValid() {
    final invalidFields = state.fieldStates.values.where((it) => it.errorMessage.isPresent);

    return invalidFields.isEmpty;
  }

  Future<void> _mapOnValidateForm(OnValidateForm event, Emitter<FormsState> emit) async {
    await _mapOnClearAllErrors(event, emit);

    final sortedEntries = state.fieldStates.entries.toList();

    sortedEntries.sort(
      (a, b) => a.value.offset.dy.compareTo(b.value.offset.dy),
    );

    for (final entry in sortedEntries.reversed) {
      await _mapOnValidateField(
        OnValidateField(
          fieldName: entry.key,
          tags: event.tags,
        ),
        emit,
      );
    }
  }

  Future<void> _mapOnValidateField(OnValidateField event, Emitter<FormsState> emit) async {
    final fieldState = state.fieldStates[event.fieldName]!;

    for (final validator in fieldState.validators) {
      if (fieldState.isEnabled &&
          !validator.isValid(fieldState.value) &&
          event.tags.contains(validator.tag)) {
        await _mapOnFieldError(
          OnFieldError(
            event.fieldName,
            validator.getValidationMessage(fieldState.value).value,
            requestFocus: event.requestFocusOnError,
          ),
          emit,
        );
        break;
      } else {
        await _mapOnFieldClearError(OnFieldClearError(event.fieldName), emit);
      }
    }
  }

  Future<void> _mapOnUpdateValue(OnUpdateValue event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      value: event.newValue,
      rewrittenValue: event.newValue,
      errorMessage: null,
    );

    if (fieldState == null) {
      return;
    }

    emit(state.copyWith(
      event,
      [event.fieldName],
      fieldStates: cloneMapAndUpdate(
        state.fieldStates,
        event.fieldName,
        fieldState,
      ),
    ));

    await _checkRules(event.fieldName, event, emit);

    if (validateOnUpdate) {
      await _mapOnValidateField(
          OnValidateField(
            fieldName: event.fieldName,
            requestFocusOnError: false,
          ),
          emit);
    }
  }

  Future<void> _mapOnRewriteValueEmptyField(OnRewriteValue event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      value: event.newValue,
      rewrittenValue: event.newValue,
      errorMessage: null,
    );

    final states = state.fieldStates;
    final fieldValues = states.map((key, value) => MapEntry(key, value.value));
    final value = StringFormValue.getValue(fieldValues, event.fieldName);

    if (fieldState == null) {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndAdd(
          state.fieldStates,
          event.fieldName,
          AppFormFieldState(
            event: event,
            value: event.newValue,
            isEnabled: false,
            focusNode: FocusNode(),
            key: GlobalKey(),
          ),
        ),
      ));
    } else if (value.isEmpty) {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndUpdate(
          state.fieldStates,
          event.fieldName,
          fieldState,
        ),
      ));
    }
  }

  Future<void> _mapOnRewriteValue(OnRewriteValue event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      value: event.newValue,
      rewrittenValue: null,
      errorMessage: null,
    );

    if (fieldState == null) {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndAdd(
          state.fieldStates,
          event.fieldName,
          AppFormFieldState(
            event: event,
            value: event.newValue,
            isEnabled: false,
            focusNode: FocusNode(),
            key: GlobalKey(),
          ),
        ),
      ));
    } else {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndUpdate(
          state.fieldStates,
          event.fieldName,
          fieldState,
        ),
      ));
    }
  }

  Future<void> _mapOnRewriteValueFinished(
      OnRewriteValueFinished event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      rewrittenValue: null,
    );

    if (fieldState != null) {
      emit(state.copyWith(
        event,
        [event.fieldName],
        fieldStates: cloneMapAndUpdate(
          state.fieldStates,
          event.fieldName,
          fieldState,
        ),
      ));

      await _checkRules(event.fieldName, event, emit);
    }
  }

  Future<void> _mapOnFieldFocus(OnFieldFocus event, Emitter<FormsState> emit) async {
    if (state.fieldStates[event.fieldName] == null) {
      await Future.delayed(const Duration(milliseconds: 50));
    }
    if (state.fieldStates[event.fieldName] != null) {
      state.fieldStates[event.fieldName]!.focusNode.requestFocus();
    }
  }

  Future<void> _checkRules(
      String excludeFieldName, FormsEvent event, Emitter<FormsState> emit) async {
    final newState = <String, AppFormFieldState>{};
    final states = state.fieldStates;
    final fieldValues = states.map((key, value) => MapEntry(key, value.value));

    for (final fieldName in state.fieldStates.keys) {
      final fieldState = state.fieldStates[fieldName]!;
      newState[fieldName] = fieldState.copyWith(event);

      if (fieldName == excludeFieldName) {
        continue;
      }

      if (fieldState.visibleRule != null) {
        newState[fieldName] = newState[fieldName]!.copyWith(
          event,
          isVisible: fieldState.visibleRule!(fieldValues),
        );
      }

      if (fieldState.enableRule != null) {
        newState[fieldName] = newState[fieldName]!.copyWith(
          event,
          isEnabled: fieldState.enableRule!(fieldValues),
        );
      }
    }

    emit(state.copyWith(event, [], fieldStates: newState));
  }

  Future<void> _mapOnFieldError(OnFieldError event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      errorMessage: Optional.of(event.error),
    );

    if (fieldState == null) {
      return;
    }

    if (event.requestFocus) {
      fieldState.focusNode.requestFocus();
    }

    emit(state.copyWith(
      event,
      [event.fieldName],
      formIsValid: false,
      fieldStates: cloneMapAndUpdate(
        state.fieldStates,
        event.fieldName,
        fieldState,
      ),
    ));
  }

  Future<void> _mapOnFieldsError(OnFieldsError event, Emitter<FormsState> emit) async {
    final sortedEntries = state.fieldStates.entries.toList();

    sortedEntries.sort(
      (a, b) => a.value.offset.dy.compareTo(b.value.offset.dy),
    );

    for (final entry in sortedEntries) {
      final fieldName = entry.key;

      if (!event.errors.containsKey(fieldName)) {
        continue;
      }

      await _mapOnFieldError(
          OnFieldError(
            fieldName,
            event.errors[fieldName]!,
            requestFocus: fieldName == sortedEntries.first.key && event.requestFocus,
          ),
          emit);
    }
  }

  Future<void> _mapOnFieldClearError(OnFieldClearError event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      errorMessage: const Optional.empty(),
    );

    if (fieldState == null) {
      return;
    }

    final fieldStates = cloneMapAndUpdate(
      state.fieldStates,
      event.fieldName,
      fieldState,
    );

    emit(state.copyWith(
      event,
      [event.fieldName],
      formIsValid: _isFormValid(fieldStates.values),
      fieldStates: fieldStates,
    ));
  }

  Future<void> _mapOnClearAllErrors(FormsEvent event, Emitter<FormsState> emit) async {
    emit(state.copyWith(
      event,
      [],
      fieldStates: state.fieldStates.map(
        (key, value) => MapEntry(
          key,
          value.copyWith(
            event,
            errorMessage: null,
          ),
        ),
      ),
    ));
  }

  Future<void> _mapOnUpdateInputOffset(OnUpdateInputOffset event, Emitter<FormsState> emit) async {
    final fieldState = _cloneFieldState(
      event.fieldName,
      event,
      offset: event.offset,
    );

    if (fieldState == null) {
      return;
    }

    emit(state.copyWith(
      event,
      [event.fieldName],
      fieldStates: cloneMapAndUpdate(
        state.fieldStates,
        event.fieldName,
        fieldState,
      ),
    ));
  }

  Future<void> _mapOnUpdateFormValuesFieldEmpty(
      OnRewriteFormValuesFieldEmpty event, Emitter<FormsState> emit) async {
    for (final fieldName in event.newValues.keys) {
      final updateEvent = OnRewriteValue(fieldName, event.newValues[fieldName]!);
      await _mapOnRewriteValueEmptyField(updateEvent, emit);
    }
  }

  Future<void> _mapOnUpdateFormValues(OnRewriteFormValues event, Emitter<FormsState> emit) async {
    for (final fieldName in event.newValues.keys) {
      final updateEvent = OnRewriteValue(fieldName, event.newValues[fieldName]!);
      await _mapOnRewriteValue(updateEvent, emit);
    }
  }
}
