import 'package:equatable/equatable.dart';
import 'package:optional/optional.dart';

abstract class FormValue<T> {
  final T data;

  FormValue(this.data);

  bool isEmpty();
}

class StringFormValue extends Equatable implements FormValue<String> {
  static Optional<String> optValue(
    Map<String, FormValue> values,
    String fieldName,
  ) {
    final value = values[fieldName];
    if (value != null) {
      if (value is StringFormValue) {
        if (value.data.isEmpty) {
          return const Optional.empty();
        } else {
          return Optional.of(value.data);
        }
      } else {
        throw StateError('Illegal value type');
      }
    } else {
      return const Optional.empty();
    }
  }

  static String getValue(
    Map<String, FormValue> values,
    String fieldName,
  ) {
    return optValue(values, fieldName).value;
  }

  @override
  final String data;

  const StringFormValue([this.data = '']);

  @override
  bool isEmpty() {
    return data.isEmpty;
  }

  @override
  String toString() => '$StringFormValue("$data")';

  @override
  List<Object?> get props => [data];
}

class ChooserOptionFormValue<T> extends Equatable implements FormValue<T?> {
  static Optional<T?> optValue<T>(
    Map<String, FormValue> values,
    String fieldName,
  ) {
    final value = values[fieldName];

    if (value is ChooserOptionFormValue<T>) {
      if (value.isEmpty()) {
        return const Optional.empty();
      } else {
        return Optional.of(value.data);
      }
    } else {
      throw StateError('Illegal value type');
    }
  }

  @override
  final T? data;

  const ChooserOptionFormValue([this.data]);

  static T? getValue<T>(
    Map<String, FormValue> values,
    String fieldName,
  ) {
    return optValue(values, fieldName).value;
  }

  @override
  bool isEmpty() {
    return data == null;
  }

  @override
  String toString() => 'ChooserOptionFormValue<$T>($data)';

  @override
  List<Object?> get props => [data];
}
