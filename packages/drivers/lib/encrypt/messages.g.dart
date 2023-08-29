// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HashVerifyMessage _$$_HashVerifyMessageFromJson(Map<String, dynamic> json) =>
    _$_HashVerifyMessage(
      hash: json['hash'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_HashVerifyMessageToJson(
        _$_HashVerifyMessage instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'value': instance.value,
    };

_$_EncryptAES256Base64Message _$$_EncryptAES256Base64MessageFromJson(
        Map<String, dynamic> json) =>
    _$_EncryptAES256Base64Message(
      content: json['content'] as String,
      keyBase64: json['key_base64'] as String,
      ivBase64: json['iv_base64'] as String,
    );

Map<String, dynamic> _$$_EncryptAES256Base64MessageToJson(
        _$_EncryptAES256Base64Message instance) =>
    <String, dynamic>{
      'content': instance.content,
      'key_base64': instance.keyBase64,
      'iv_base64': instance.ivBase64,
    };

_$_DecryptAES256Base64Message _$$_DecryptAES256Base64MessageFromJson(
        Map<String, dynamic> json) =>
    _$_DecryptAES256Base64Message(
      contentBase64: json['content_base64'] as String,
      keyBase64: json['key_base64'] as String,
      ivBase64: json['iv_base64'] as String,
    );

Map<String, dynamic> _$$_DecryptAES256Base64MessageToJson(
        _$_DecryptAES256Base64Message instance) =>
    <String, dynamic>{
      'content_base64': instance.contentBase64,
      'key_base64': instance.keyBase64,
      'iv_base64': instance.ivBase64,
    };
