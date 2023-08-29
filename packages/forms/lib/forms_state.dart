import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:forms/forms_bloc.dart';
import 'package:forms/forms_event.dart';
import 'package:localized_string/localized_string.dart';
import 'package:optional/optional.dart';

import 'data.dart';
import 'validators.dart';

class FormsState extends Equatable {
  final bool formIsValid;
  final FormsEvent? event;
  final Map<String, AppFormFieldState> fieldStates;
  final List<String?> updateOnlyFields;

  // NOTE(sysint64): removed widget, but still save state for future appearing
  final Map<String, AppFormFieldState> removedFieldStates;

  const FormsState({
    this.formIsValid = false,
    this.fieldStates = const {},
    this.removedFieldStates = const {},
    this.updateOnlyFields = const [],
    this.event,
  });

  FormsState copyWith(
    FormsEvent event,
    List<String> updateOnlyFields, {
    bool? formIsValid,
    Map<String, AppFormFieldState>? fieldStates,
    Map<String, AppFormFieldState>? removedFieldStates,
  }) {
    return FormsState(
      formIsValid: formIsValid ?? this.formIsValid,
      fieldStates: fieldStates ?? this.fieldStates,
      removedFieldStates: removedFieldStates ?? this.removedFieldStates,
      event: event,
      // NOTE(sysint64): We don't want to use an old event
      updateOnlyFields: updateOnlyFields,
    );
  }

  @override
  List<Object?> get props =>
      [formIsValid, event, fieldStates, updateOnlyFields, removedFieldStates];
}

class AppFormFieldState<T> extends Equatable {
  final FormValue<T> value;
  final FormValue<T>? rewrittenValue;
  final FocusNode focusNode;
  final Optional<LocalizedString> errorMessage;
  final bool isEnabled;
  final bool isVisible;
  final List<Validator> validators;
  final Offset offset;
  final FormFieldPredicate? enableRule;
  final FormFieldPredicate? visibleRule;
  final FormsEvent event;
  final Key key;

  const AppFormFieldState({
    required this.focusNode,
    required this.value,
    required this.key,
    required this.event,
    this.errorMessage = const Optional.empty(),
    this.isEnabled = true,
    this.isVisible = true,
    this.validators = const [],
    this.offset = const Offset(0, 0),
    this.enableRule = null,
    this.visibleRule = null,
    this.rewrittenValue = null,
  });

  @override
  String toString() => '$AppFormFieldState<$T>(value: $value, '
      'errorMessage: $errorMessage, isEnabled: $isEnabled, '
      'validators: $validators)';

  AppFormFieldState copyWith(
    FormsEvent event, {
    FocusNode? focusNode,
    FormValue<T>? value,
    FormValue<T>? rewrittenValue,
    Optional<LocalizedString>? errorMessage,
    bool? isEnabled,
    bool? isVisible,
    List<Validator>? validators,
    Offset? offset,
    Key? key,
    FormFieldPredicate? enableRule,
    FormFieldPredicate? visibleRule,
  }) {
    return AppFormFieldState(
      focusNode: focusNode ?? this.focusNode,
      value: value ?? this.value,
      rewrittenValue: rewrittenValue,
      errorMessage: errorMessage ?? this.errorMessage,
      isEnabled: isEnabled ?? this.isEnabled,
      isVisible: isVisible ?? this.isVisible,
      validators: validators ?? this.validators,
      offset: offset ?? this.offset,
      enableRule: enableRule ?? this.enableRule,
      visibleRule: visibleRule ?? this.visibleRule,
      event: event,
      // NOTE(sysint64): We don't want to use an old event
      key: key ?? this.key,
    );
  }

  @override
  List<Object?> get props => [
        focusNode,
        value,
        key,
        validators,
        event,
        errorMessage,
        isEnabled,
        isVisible,
        offset,
        enableRule,
        visibleRule,
      ];
}
