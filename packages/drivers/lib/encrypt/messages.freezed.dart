// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HashVerifyMessage _$HashVerifyMessageFromJson(Map<String, dynamic> json) {
  return _HashVerifyMessage.fromJson(json);
}

/// @nodoc
mixin _$HashVerifyMessage {
  String get hash => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HashVerifyMessageCopyWith<HashVerifyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashVerifyMessageCopyWith<$Res> {
  factory $HashVerifyMessageCopyWith(
          HashVerifyMessage value, $Res Function(HashVerifyMessage) then) =
      _$HashVerifyMessageCopyWithImpl<$Res, HashVerifyMessage>;
  @useResult
  $Res call({String hash, String value});
}

/// @nodoc
class _$HashVerifyMessageCopyWithImpl<$Res, $Val extends HashVerifyMessage>
    implements $HashVerifyMessageCopyWith<$Res> {
  _$HashVerifyMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HashVerifyMessageCopyWith<$Res>
    implements $HashVerifyMessageCopyWith<$Res> {
  factory _$$_HashVerifyMessageCopyWith(_$_HashVerifyMessage value,
          $Res Function(_$_HashVerifyMessage) then) =
      __$$_HashVerifyMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash, String value});
}

/// @nodoc
class __$$_HashVerifyMessageCopyWithImpl<$Res>
    extends _$HashVerifyMessageCopyWithImpl<$Res, _$_HashVerifyMessage>
    implements _$$_HashVerifyMessageCopyWith<$Res> {
  __$$_HashVerifyMessageCopyWithImpl(
      _$_HashVerifyMessage _value, $Res Function(_$_HashVerifyMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? value = null,
  }) {
    return _then(_$_HashVerifyMessage(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_HashVerifyMessage implements _HashVerifyMessage {
  const _$_HashVerifyMessage({required this.hash, required this.value});

  factory _$_HashVerifyMessage.fromJson(Map<String, dynamic> json) =>
      _$$_HashVerifyMessageFromJson(json);

  @override
  final String hash;
  @override
  final String value;

  @override
  String toString() {
    return 'HashVerifyMessage(hash: $hash, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HashVerifyMessage &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HashVerifyMessageCopyWith<_$_HashVerifyMessage> get copyWith =>
      __$$_HashVerifyMessageCopyWithImpl<_$_HashVerifyMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HashVerifyMessageToJson(
      this,
    );
  }
}

abstract class _HashVerifyMessage implements HashVerifyMessage {
  const factory _HashVerifyMessage(
      {required final String hash,
      required final String value}) = _$_HashVerifyMessage;

  factory _HashVerifyMessage.fromJson(Map<String, dynamic> json) =
      _$_HashVerifyMessage.fromJson;

  @override
  String get hash;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_HashVerifyMessageCopyWith<_$_HashVerifyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

EncryptAES256Base64Message _$EncryptAES256Base64MessageFromJson(
    Map<String, dynamic> json) {
  return _EncryptAES256Base64Message.fromJson(json);
}

/// @nodoc
mixin _$EncryptAES256Base64Message {
  String get content => throw _privateConstructorUsedError;
  String get keyBase64 => throw _privateConstructorUsedError;
  String get ivBase64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptAES256Base64MessageCopyWith<EncryptAES256Base64Message>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptAES256Base64MessageCopyWith<$Res> {
  factory $EncryptAES256Base64MessageCopyWith(EncryptAES256Base64Message value,
          $Res Function(EncryptAES256Base64Message) then) =
      _$EncryptAES256Base64MessageCopyWithImpl<$Res,
          EncryptAES256Base64Message>;
  @useResult
  $Res call({String content, String keyBase64, String ivBase64});
}

/// @nodoc
class _$EncryptAES256Base64MessageCopyWithImpl<$Res,
        $Val extends EncryptAES256Base64Message>
    implements $EncryptAES256Base64MessageCopyWith<$Res> {
  _$EncryptAES256Base64MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? keyBase64 = null,
    Object? ivBase64 = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      keyBase64: null == keyBase64
          ? _value.keyBase64
          : keyBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      ivBase64: null == ivBase64
          ? _value.ivBase64
          : ivBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EncryptAES256Base64MessageCopyWith<$Res>
    implements $EncryptAES256Base64MessageCopyWith<$Res> {
  factory _$$_EncryptAES256Base64MessageCopyWith(
          _$_EncryptAES256Base64Message value,
          $Res Function(_$_EncryptAES256Base64Message) then) =
      __$$_EncryptAES256Base64MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String keyBase64, String ivBase64});
}

/// @nodoc
class __$$_EncryptAES256Base64MessageCopyWithImpl<$Res>
    extends _$EncryptAES256Base64MessageCopyWithImpl<$Res,
        _$_EncryptAES256Base64Message>
    implements _$$_EncryptAES256Base64MessageCopyWith<$Res> {
  __$$_EncryptAES256Base64MessageCopyWithImpl(
      _$_EncryptAES256Base64Message _value,
      $Res Function(_$_EncryptAES256Base64Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? keyBase64 = null,
    Object? ivBase64 = null,
  }) {
    return _then(_$_EncryptAES256Base64Message(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      keyBase64: null == keyBase64
          ? _value.keyBase64
          : keyBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      ivBase64: null == ivBase64
          ? _value.ivBase64
          : ivBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_EncryptAES256Base64Message implements _EncryptAES256Base64Message {
  const _$_EncryptAES256Base64Message(
      {required this.content, required this.keyBase64, required this.ivBase64});

  factory _$_EncryptAES256Base64Message.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptAES256Base64MessageFromJson(json);

  @override
  final String content;
  @override
  final String keyBase64;
  @override
  final String ivBase64;

  @override
  String toString() {
    return 'EncryptAES256Base64Message(content: $content, keyBase64: $keyBase64, ivBase64: $ivBase64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptAES256Base64Message &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.keyBase64, keyBase64) ||
                other.keyBase64 == keyBase64) &&
            (identical(other.ivBase64, ivBase64) ||
                other.ivBase64 == ivBase64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, keyBase64, ivBase64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncryptAES256Base64MessageCopyWith<_$_EncryptAES256Base64Message>
      get copyWith => __$$_EncryptAES256Base64MessageCopyWithImpl<
          _$_EncryptAES256Base64Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptAES256Base64MessageToJson(
      this,
    );
  }
}

abstract class _EncryptAES256Base64Message
    implements EncryptAES256Base64Message {
  const factory _EncryptAES256Base64Message(
      {required final String content,
      required final String keyBase64,
      required final String ivBase64}) = _$_EncryptAES256Base64Message;

  factory _EncryptAES256Base64Message.fromJson(Map<String, dynamic> json) =
      _$_EncryptAES256Base64Message.fromJson;

  @override
  String get content;
  @override
  String get keyBase64;
  @override
  String get ivBase64;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptAES256Base64MessageCopyWith<_$_EncryptAES256Base64Message>
      get copyWith => throw _privateConstructorUsedError;
}

DecryptAES256Base64Message _$DecryptAES256Base64MessageFromJson(
    Map<String, dynamic> json) {
  return _DecryptAES256Base64Message.fromJson(json);
}

/// @nodoc
mixin _$DecryptAES256Base64Message {
  String get contentBase64 => throw _privateConstructorUsedError;
  String get keyBase64 => throw _privateConstructorUsedError;
  String get ivBase64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecryptAES256Base64MessageCopyWith<DecryptAES256Base64Message>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptAES256Base64MessageCopyWith<$Res> {
  factory $DecryptAES256Base64MessageCopyWith(DecryptAES256Base64Message value,
          $Res Function(DecryptAES256Base64Message) then) =
      _$DecryptAES256Base64MessageCopyWithImpl<$Res,
          DecryptAES256Base64Message>;
  @useResult
  $Res call({String contentBase64, String keyBase64, String ivBase64});
}

/// @nodoc
class _$DecryptAES256Base64MessageCopyWithImpl<$Res,
        $Val extends DecryptAES256Base64Message>
    implements $DecryptAES256Base64MessageCopyWith<$Res> {
  _$DecryptAES256Base64MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentBase64 = null,
    Object? keyBase64 = null,
    Object? ivBase64 = null,
  }) {
    return _then(_value.copyWith(
      contentBase64: null == contentBase64
          ? _value.contentBase64
          : contentBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      keyBase64: null == keyBase64
          ? _value.keyBase64
          : keyBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      ivBase64: null == ivBase64
          ? _value.ivBase64
          : ivBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DecryptAES256Base64MessageCopyWith<$Res>
    implements $DecryptAES256Base64MessageCopyWith<$Res> {
  factory _$$_DecryptAES256Base64MessageCopyWith(
          _$_DecryptAES256Base64Message value,
          $Res Function(_$_DecryptAES256Base64Message) then) =
      __$$_DecryptAES256Base64MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contentBase64, String keyBase64, String ivBase64});
}

/// @nodoc
class __$$_DecryptAES256Base64MessageCopyWithImpl<$Res>
    extends _$DecryptAES256Base64MessageCopyWithImpl<$Res,
        _$_DecryptAES256Base64Message>
    implements _$$_DecryptAES256Base64MessageCopyWith<$Res> {
  __$$_DecryptAES256Base64MessageCopyWithImpl(
      _$_DecryptAES256Base64Message _value,
      $Res Function(_$_DecryptAES256Base64Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentBase64 = null,
    Object? keyBase64 = null,
    Object? ivBase64 = null,
  }) {
    return _then(_$_DecryptAES256Base64Message(
      contentBase64: null == contentBase64
          ? _value.contentBase64
          : contentBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      keyBase64: null == keyBase64
          ? _value.keyBase64
          : keyBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      ivBase64: null == ivBase64
          ? _value.ivBase64
          : ivBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DecryptAES256Base64Message implements _DecryptAES256Base64Message {
  const _$_DecryptAES256Base64Message(
      {required this.contentBase64,
      required this.keyBase64,
      required this.ivBase64});

  factory _$_DecryptAES256Base64Message.fromJson(Map<String, dynamic> json) =>
      _$$_DecryptAES256Base64MessageFromJson(json);

  @override
  final String contentBase64;
  @override
  final String keyBase64;
  @override
  final String ivBase64;

  @override
  String toString() {
    return 'DecryptAES256Base64Message(contentBase64: $contentBase64, keyBase64: $keyBase64, ivBase64: $ivBase64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecryptAES256Base64Message &&
            (identical(other.contentBase64, contentBase64) ||
                other.contentBase64 == contentBase64) &&
            (identical(other.keyBase64, keyBase64) ||
                other.keyBase64 == keyBase64) &&
            (identical(other.ivBase64, ivBase64) ||
                other.ivBase64 == ivBase64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentBase64, keyBase64, ivBase64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecryptAES256Base64MessageCopyWith<_$_DecryptAES256Base64Message>
      get copyWith => __$$_DecryptAES256Base64MessageCopyWithImpl<
          _$_DecryptAES256Base64Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DecryptAES256Base64MessageToJson(
      this,
    );
  }
}

abstract class _DecryptAES256Base64Message
    implements DecryptAES256Base64Message {
  const factory _DecryptAES256Base64Message(
      {required final String contentBase64,
      required final String keyBase64,
      required final String ivBase64}) = _$_DecryptAES256Base64Message;

  factory _DecryptAES256Base64Message.fromJson(Map<String, dynamic> json) =
      _$_DecryptAES256Base64Message.fromJson;

  @override
  String get contentBase64;
  @override
  String get keyBase64;
  @override
  String get ivBase64;
  @override
  @JsonKey(ignore: true)
  _$$_DecryptAES256Base64MessageCopyWith<_$_DecryptAES256Base64Message>
      get copyWith => throw _privateConstructorUsedError;
}
