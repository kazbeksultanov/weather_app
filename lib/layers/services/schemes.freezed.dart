// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schemes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchCitiesResponse _$SearchCitiesResponseFromJson(Map<String, dynamic> json) {
  return _SearchCitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchCitiesResponse {
  List<SearchCitiesItem>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCitiesResponseCopyWith<SearchCitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCitiesResponseCopyWith<$Res> {
  factory $SearchCitiesResponseCopyWith(SearchCitiesResponse value,
          $Res Function(SearchCitiesResponse) then) =
      _$SearchCitiesResponseCopyWithImpl<$Res, SearchCitiesResponse>;
  @useResult
  $Res call({List<SearchCitiesItem>? results});
}

/// @nodoc
class _$SearchCitiesResponseCopyWithImpl<$Res,
        $Val extends SearchCitiesResponse>
    implements $SearchCitiesResponseCopyWith<$Res> {
  _$SearchCitiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchCitiesItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchCitiesResponseCopyWith<$Res>
    implements $SearchCitiesResponseCopyWith<$Res> {
  factory _$$_SearchCitiesResponseCopyWith(_$_SearchCitiesResponse value,
          $Res Function(_$_SearchCitiesResponse) then) =
      __$$_SearchCitiesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchCitiesItem>? results});
}

/// @nodoc
class __$$_SearchCitiesResponseCopyWithImpl<$Res>
    extends _$SearchCitiesResponseCopyWithImpl<$Res, _$_SearchCitiesResponse>
    implements _$$_SearchCitiesResponseCopyWith<$Res> {
  __$$_SearchCitiesResponseCopyWithImpl(_$_SearchCitiesResponse _value,
      $Res Function(_$_SearchCitiesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_SearchCitiesResponse(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchCitiesItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SearchCitiesResponse implements _SearchCitiesResponse {
  const _$_SearchCitiesResponse({required this.results});

  factory _$_SearchCitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCitiesResponseFromJson(json);

  @override
  final List<SearchCitiesItem>? results;

  @override
  String toString() {
    return 'SearchCitiesResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCitiesResponse &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCitiesResponseCopyWith<_$_SearchCitiesResponse> get copyWith =>
      __$$_SearchCitiesResponseCopyWithImpl<_$_SearchCitiesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCitiesResponseToJson(
      this,
    );
  }
}

abstract class _SearchCitiesResponse implements SearchCitiesResponse {
  const factory _SearchCitiesResponse(
          {required final List<SearchCitiesItem>? results}) =
      _$_SearchCitiesResponse;

  factory _SearchCitiesResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchCitiesResponse.fromJson;

  @override
  List<SearchCitiesItem>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCitiesResponseCopyWith<_$_SearchCitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchCitiesItem _$SearchCitiesItemFromJson(Map<String, dynamic> json) {
  return _SearchCitiesItem.fromJson(json);
}

/// @nodoc
mixin _$SearchCitiesItem {
  String? get country => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCitiesItemCopyWith<SearchCitiesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCitiesItemCopyWith<$Res> {
  factory $SearchCitiesItemCopyWith(
          SearchCitiesItem value, $Res Function(SearchCitiesItem) then) =
      _$SearchCitiesItemCopyWithImpl<$Res, SearchCitiesItem>;
  @useResult
  $Res call(
      {String? country,
      String? countryCode,
      int id,
      double latitude,
      double longitude,
      String name,
      String? timezone});
}

/// @nodoc
class _$SearchCitiesItemCopyWithImpl<$Res, $Val extends SearchCitiesItem>
    implements $SearchCitiesItemCopyWith<$Res> {
  _$SearchCitiesItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? name = null,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchCitiesItemCopyWith<$Res>
    implements $SearchCitiesItemCopyWith<$Res> {
  factory _$$_SearchCitiesItemCopyWith(
          _$_SearchCitiesItem value, $Res Function(_$_SearchCitiesItem) then) =
      __$$_SearchCitiesItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? countryCode,
      int id,
      double latitude,
      double longitude,
      String name,
      String? timezone});
}

/// @nodoc
class __$$_SearchCitiesItemCopyWithImpl<$Res>
    extends _$SearchCitiesItemCopyWithImpl<$Res, _$_SearchCitiesItem>
    implements _$$_SearchCitiesItemCopyWith<$Res> {
  __$$_SearchCitiesItemCopyWithImpl(
      _$_SearchCitiesItem _value, $Res Function(_$_SearchCitiesItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? name = null,
    Object? timezone = freezed,
  }) {
    return _then(_$_SearchCitiesItem(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SearchCitiesItem implements _SearchCitiesItem {
  const _$_SearchCitiesItem(
      {required this.country,
      required this.countryCode,
      required this.id,
      required this.latitude,
      required this.longitude,
      required this.name,
      required this.timezone});

  factory _$_SearchCitiesItem.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCitiesItemFromJson(json);

  @override
  final String? country;
  @override
  final String? countryCode;
  @override
  final int id;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String name;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'SearchCitiesItem(country: $country, countryCode: $countryCode, id: $id, latitude: $latitude, longitude: $longitude, name: $name, timezone: $timezone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCitiesItem &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, countryCode, id,
      latitude, longitude, name, timezone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCitiesItemCopyWith<_$_SearchCitiesItem> get copyWith =>
      __$$_SearchCitiesItemCopyWithImpl<_$_SearchCitiesItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCitiesItemToJson(
      this,
    );
  }
}

abstract class _SearchCitiesItem implements SearchCitiesItem {
  const factory _SearchCitiesItem(
      {required final String? country,
      required final String? countryCode,
      required final int id,
      required final double latitude,
      required final double longitude,
      required final String name,
      required final String? timezone}) = _$_SearchCitiesItem;

  factory _SearchCitiesItem.fromJson(Map<String, dynamic> json) =
      _$_SearchCitiesItem.fromJson;

  @override
  String? get country;
  @override
  String? get countryCode;
  @override
  int get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get name;
  @override
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCitiesItemCopyWith<_$_SearchCitiesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponse {
  CurrentWeather get currentWeather => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res, ForecastResponse>;
  @useResult
  $Res call({CurrentWeather currentWeather, String timezone, int? id});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res, $Val extends ForecastResponse>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
    Object? timezone = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastResponseCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$$_ForecastResponseCopyWith(
          _$_ForecastResponse value, $Res Function(_$_ForecastResponse) then) =
      __$$_ForecastResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrentWeather currentWeather, String timezone, int? id});

  @override
  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$_ForecastResponseCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res, _$_ForecastResponse>
    implements _$$_ForecastResponseCopyWith<$Res> {
  __$$_ForecastResponseCopyWithImpl(
      _$_ForecastResponse _value, $Res Function(_$_ForecastResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
    Object? timezone = null,
    Object? id = freezed,
  }) {
    return _then(_$_ForecastResponse(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ForecastResponse implements _ForecastResponse {
  const _$_ForecastResponse(
      {required this.currentWeather, required this.timezone, required this.id});

  factory _$_ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastResponseFromJson(json);

  @override
  final CurrentWeather currentWeather;
  @override
  final String timezone;
  @override
  final int? id;

  @override
  String toString() {
    return 'ForecastResponse(currentWeather: $currentWeather, timezone: $timezone, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastResponse &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentWeather, timezone, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastResponseCopyWith<_$_ForecastResponse> get copyWith =>
      __$$_ForecastResponseCopyWithImpl<_$_ForecastResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastResponseToJson(
      this,
    );
  }
}

abstract class _ForecastResponse implements ForecastResponse {
  const factory _ForecastResponse(
      {required final CurrentWeather currentWeather,
      required final String timezone,
      required final int? id}) = _$_ForecastResponse;

  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =
      _$_ForecastResponse.fromJson;

  @override
  CurrentWeather get currentWeather;
  @override
  String get timezone;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastResponseCopyWith<_$_ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  double get temperature => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  int get weathercode => throw _privateConstructorUsedError;
  double get winddirection => throw _privateConstructorUsedError;
  double get windspeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {double temperature,
      String time,
      int weathercode,
      double winddirection,
      double windspeed});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? time = null,
    Object? weathercode = null,
    Object? winddirection = null,
    Object? windspeed = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
      winddirection: null == winddirection
          ? _value.winddirection
          : winddirection // ignore: cast_nullable_to_non_nullable
              as double,
      windspeed: null == windspeed
          ? _value.windspeed
          : windspeed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$_CurrentWeatherCopyWith(
          _$_CurrentWeather value, $Res Function(_$_CurrentWeather) then) =
      __$$_CurrentWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temperature,
      String time,
      int weathercode,
      double winddirection,
      double windspeed});
}

/// @nodoc
class __$$_CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$_CurrentWeather>
    implements _$$_CurrentWeatherCopyWith<$Res> {
  __$$_CurrentWeatherCopyWithImpl(
      _$_CurrentWeather _value, $Res Function(_$_CurrentWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? time = null,
    Object? weathercode = null,
    Object? winddirection = null,
    Object? windspeed = null,
  }) {
    return _then(_$_CurrentWeather(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
      winddirection: null == winddirection
          ? _value.winddirection
          : winddirection // ignore: cast_nullable_to_non_nullable
              as double,
      windspeed: null == windspeed
          ? _value.windspeed
          : windspeed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      {required this.temperature,
      required this.time,
      required this.weathercode,
      required this.winddirection,
      required this.windspeed});

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherFromJson(json);

  @override
  final double temperature;
  @override
  final String time;
  @override
  final int weathercode;
  @override
  final double winddirection;
  @override
  final double windspeed;

  @override
  String toString() {
    return 'CurrentWeather(temperature: $temperature, time: $time, weathercode: $weathercode, winddirection: $winddirection, windspeed: $windspeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeather &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weathercode, weathercode) ||
                other.weathercode == weathercode) &&
            (identical(other.winddirection, winddirection) ||
                other.winddirection == winddirection) &&
            (identical(other.windspeed, windspeed) ||
                other.windspeed == windspeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temperature, time, weathercode, winddirection, windspeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      __$$_CurrentWeatherCopyWithImpl<_$_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required final double temperature,
      required final String time,
      required final int weathercode,
      required final double winddirection,
      required final double windspeed}) = _$_CurrentWeather;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  double get temperature;
  @override
  String get time;
  @override
  int get weathercode;
  @override
  double get winddirection;
  @override
  double get windspeed;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedCityId _$SelectedCityIdFromJson(Map<String, dynamic> json) {
  return _SelectedCityId.fromJson(json);
}

/// @nodoc
mixin _$SelectedCityId {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedCityIdCopyWith<SelectedCityId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCityIdCopyWith<$Res> {
  factory $SelectedCityIdCopyWith(
          SelectedCityId value, $Res Function(SelectedCityId) then) =
      _$SelectedCityIdCopyWithImpl<$Res, SelectedCityId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SelectedCityIdCopyWithImpl<$Res, $Val extends SelectedCityId>
    implements $SelectedCityIdCopyWith<$Res> {
  _$SelectedCityIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedCityIdCopyWith<$Res>
    implements $SelectedCityIdCopyWith<$Res> {
  factory _$$_SelectedCityIdCopyWith(
          _$_SelectedCityId value, $Res Function(_$_SelectedCityId) then) =
      __$$_SelectedCityIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_SelectedCityIdCopyWithImpl<$Res>
    extends _$SelectedCityIdCopyWithImpl<$Res, _$_SelectedCityId>
    implements _$$_SelectedCityIdCopyWith<$Res> {
  __$$_SelectedCityIdCopyWithImpl(
      _$_SelectedCityId _value, $Res Function(_$_SelectedCityId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_SelectedCityId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SelectedCityId implements _SelectedCityId {
  const _$_SelectedCityId({required this.id});

  factory _$_SelectedCityId.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedCityIdFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'SelectedCityId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedCityId &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCityIdCopyWith<_$_SelectedCityId> get copyWith =>
      __$$_SelectedCityIdCopyWithImpl<_$_SelectedCityId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedCityIdToJson(
      this,
    );
  }
}

abstract class _SelectedCityId implements SelectedCityId {
  const factory _SelectedCityId({required final int id}) = _$_SelectedCityId;

  factory _SelectedCityId.fromJson(Map<String, dynamic> json) =
      _$_SelectedCityId.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedCityIdCopyWith<_$_SelectedCityId> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherApiCacheData _$WeatherApiCacheDataFromJson(Map<String, dynamic> json) {
  return _WeatherApiCacheData.fromJson(json);
}

/// @nodoc
mixin _$WeatherApiCacheData {
  String get lastUpdateDate => throw _privateConstructorUsedError;
  List<ForecastResponse> get forecasts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherApiCacheDataCopyWith<WeatherApiCacheData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherApiCacheDataCopyWith<$Res> {
  factory $WeatherApiCacheDataCopyWith(
          WeatherApiCacheData value, $Res Function(WeatherApiCacheData) then) =
      _$WeatherApiCacheDataCopyWithImpl<$Res, WeatherApiCacheData>;
  @useResult
  $Res call({String lastUpdateDate, List<ForecastResponse> forecasts});
}

/// @nodoc
class _$WeatherApiCacheDataCopyWithImpl<$Res, $Val extends WeatherApiCacheData>
    implements $WeatherApiCacheDataCopyWith<$Res> {
  _$WeatherApiCacheDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdateDate = null,
    Object? forecasts = null,
  }) {
    return _then(_value.copyWith(
      lastUpdateDate: null == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as String,
      forecasts: null == forecasts
          ? _value.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherApiCacheDataCopyWith<$Res>
    implements $WeatherApiCacheDataCopyWith<$Res> {
  factory _$$_WeatherApiCacheDataCopyWith(_$_WeatherApiCacheData value,
          $Res Function(_$_WeatherApiCacheData) then) =
      __$$_WeatherApiCacheDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lastUpdateDate, List<ForecastResponse> forecasts});
}

/// @nodoc
class __$$_WeatherApiCacheDataCopyWithImpl<$Res>
    extends _$WeatherApiCacheDataCopyWithImpl<$Res, _$_WeatherApiCacheData>
    implements _$$_WeatherApiCacheDataCopyWith<$Res> {
  __$$_WeatherApiCacheDataCopyWithImpl(_$_WeatherApiCacheData _value,
      $Res Function(_$_WeatherApiCacheData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdateDate = null,
    Object? forecasts = null,
  }) {
    return _then(_$_WeatherApiCacheData(
      lastUpdateDate: null == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as String,
      forecasts: null == forecasts
          ? _value.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_WeatherApiCacheData implements _WeatherApiCacheData {
  const _$_WeatherApiCacheData(
      {required this.lastUpdateDate, required this.forecasts});

  factory _$_WeatherApiCacheData.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherApiCacheDataFromJson(json);

  @override
  final String lastUpdateDate;
  @override
  final List<ForecastResponse> forecasts;

  @override
  String toString() {
    return 'WeatherApiCacheData(lastUpdateDate: $lastUpdateDate, forecasts: $forecasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherApiCacheData &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            const DeepCollectionEquality().equals(other.forecasts, forecasts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdateDate,
      const DeepCollectionEquality().hash(forecasts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherApiCacheDataCopyWith<_$_WeatherApiCacheData> get copyWith =>
      __$$_WeatherApiCacheDataCopyWithImpl<_$_WeatherApiCacheData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherApiCacheDataToJson(
      this,
    );
  }
}

abstract class _WeatherApiCacheData implements WeatherApiCacheData {
  const factory _WeatherApiCacheData(
          {required final String lastUpdateDate,
          required final List<ForecastResponse> forecasts}) =
      _$_WeatherApiCacheData;

  factory _WeatherApiCacheData.fromJson(Map<String, dynamic> json) =
      _$_WeatherApiCacheData.fromJson;

  @override
  String get lastUpdateDate;
  @override
  List<ForecastResponse> get forecasts;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherApiCacheDataCopyWith<_$_WeatherApiCacheData> get copyWith =>
      throw _privateConstructorUsedError;
}
