// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.g.dart';
part 'error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApiError({
    String? code,
    String? payload,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);
}
