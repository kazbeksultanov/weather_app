import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:forms/bloc.dart';
import 'package:localized_string/localized_string.dart';
import 'package:meta/meta.dart';

import 'data.dart';
import 'validators.dart';

@immutable
abstract class FormsEvent extends Equatable {}

class OnAddInput extends FormsEvent {
  final String fieldName;
  final FormValue? value;
  final List<Validator> validators;
  final FormFieldPredicate? enableRule;
  final FormFieldPredicate? visibleRule;

  OnAddInput(
    this.fieldName,
    this.value,
    this.validators,
    this.enableRule,
    this.visibleRule,
  );

  @override
  List<Object?> get props => [fieldName, value, validators, enableRule, visibleRule];
}

// NOTE(sysint64): We will sort widgets by vertical offset
//   to focus correct widget when validation error occur
class OnUpdateInputOffset extends FormsEvent {
  final String fieldName;
  final Offset offset;

  OnUpdateInputOffset(this.fieldName, this.offset);

  @override
  List<Object?> get props => [fieldName, offset];
}

class OnDisableInput extends FormsEvent {
  final String? fieldName;

  OnDisableInput({this.fieldName});

  @override
  List<Object?> get props => [fieldName];
}

class OnEnableInput extends FormsEvent {
  final String? fieldName;

  OnEnableInput({this.fieldName});

  @override
  List<Object?> get props => [fieldName];
}

class OnEnableInputWhere extends FormsEvent {
  final bool Function(String) where;

  OnEnableInputWhere(this.where);

  @override
  List<Object?> get props => [where];
}

class OnDisableInputWhere extends FormsEvent {
  final bool Function(String) where;

  OnDisableInputWhere(this.where);

  @override
  List<Object?> get props => [where];
}

class OnRemoveInput extends FormsEvent {
  final String fieldName;
  final bool saveState;

  OnRemoveInput({
    required this.fieldName,
    this.saveState = true,
  });

  @override
  List<Object?> get props => [fieldName, saveState];
}

class OnSubmit extends FormsEvent {
  final List<String> tags;
  final String actionName;

  OnSubmit({this.tags = const ['main'], this.actionName = 'submit'});

  @override
  List<Object?> get props => [tags, actionName];
}

class OnUpdateValue<T> extends FormsEvent {
  final String fieldName;
  final FormValue<T> newValue;

  OnUpdateValue(this.fieldName, this.newValue);

  @override
  String toString() {
    return '$fieldName: $newValue';
  }

  @override
  List<Object?> get props => [fieldName, newValue];
}

class OnRewriteValue<T> extends FormsEvent {
  final String fieldName;
  final FormValue<T> newValue;

  OnRewriteValue(this.fieldName, this.newValue);

  @override
  String toString() {
    return '$fieldName: $newValue';
  }

  @override
  List<Object?> get props => [fieldName, newValue];
}

class OnFieldFocus extends FormsEvent {
  final String fieldName;

  OnFieldFocus(this.fieldName);

  @override
  List<Object?> get props => [fieldName];
}

class OnRewriteValueFinished extends FormsEvent {
  final String fieldName;

  OnRewriteValueFinished(this.fieldName);

  @override
  List<Object?> get props => [fieldName];
}

class OnRewriteFormValues extends FormsEvent {
  final Map<String, FormValue> newValues;

  OnRewriteFormValues(this.newValues);

  @override
  List<Object?> get props => [newValues];
}

// Rewrite fields value if it empty
class OnRewriteFormValuesFieldEmpty extends FormsEvent {
  final Map<String, FormValue> newValues;

  OnRewriteFormValuesFieldEmpty(this.newValues);

  @override
  List<Object?> get props => [newValues];
}

class OnFieldError extends FormsEvent {
  final String fieldName;
  final LocalizedString error;
  final bool requestFocus;

  OnFieldError(
    this.fieldName,
    this.error, {
    this.requestFocus = true,
  });

  @override
  List<Object?> get props => [fieldName, error, requestFocus];
}

class OnFieldsError extends FormsEvent {
  final Map<String, LocalizedString> errors;
  final bool requestFocus;

  OnFieldsError({
    required this.errors,
    this.requestFocus = true,
  });

  @override
  List<Object?> get props => [errors, requestFocus];
}

class OnFieldClearError extends FormsEvent {
  final String fieldName;

  OnFieldClearError(this.fieldName);

  @override
  List<Object?> get props => [fieldName];
}

class OnClearAllErrors extends FormsEvent {
  @override
  List<Object?> get props => [];
}

class OnValidateForm extends FormsEvent {
  final List<String> tags;

  OnValidateForm({this.tags = const ['']});

  @override
  List<Object?> get props => [tags];
}

class OnValidateField extends FormsEvent {
  final String fieldName;
  final List<String> tags;
  final bool requestFocusOnError;

  OnValidateField({
    required this.fieldName,
    this.tags = const ['main'],
    this.requestFocusOnError = true,
  });

  @override
  List<Object?> get props => [fieldName, tags, requestFocusOnError];
}
