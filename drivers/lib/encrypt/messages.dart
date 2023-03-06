// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages.freezed.dart';
part 'messages.g.dart';

@freezed
class HashVerifyMessage with _$HashVerifyMessage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HashVerifyMessage({
    required String hash,
    required String value,
  }) = _HashVerifyMessage;

  factory HashVerifyMessage.fromJson(Map<String, dynamic> json) =>
      _$HashVerifyMessageFromJson(json);
}

@freezed
class EncryptAES256Base64Message with _$EncryptAES256Base64Message {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EncryptAES256Base64Message({
    required String content,
    required String keyBase64,
    required String ivBase64,
  }) = _EncryptAES256Base64Message;

  factory EncryptAES256Base64Message.fromJson(Map<String, dynamic> json) =>
      _$EncryptAES256Base64MessageFromJson(json);
}

@freezed
class DecryptAES256Base64Message with _$DecryptAES256Base64Message {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DecryptAES256Base64Message({
    required String contentBase64,
    required String keyBase64,
    required String ivBase64,
  }) = _DecryptAES256Base64Message;

  factory DecryptAES256Base64Message.fromJson(Map<String, dynamic> json) =>
      _$DecryptAES256Base64MessageFromJson(json);
}
