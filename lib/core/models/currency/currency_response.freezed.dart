// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyResponse _$CurrencyResponseFromJson(Map<String, dynamic> json) {
  return _CurrencyResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrencyResponse {
  List<Currency> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyResponseCopyWith<CurrencyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyResponseCopyWith<$Res> {
  factory $CurrencyResponseCopyWith(
          CurrencyResponse value, $Res Function(CurrencyResponse) then) =
      _$CurrencyResponseCopyWithImpl<$Res>;
  $Res call({List<Currency> result});
}

/// @nodoc
class _$CurrencyResponseCopyWithImpl<$Res>
    implements $CurrencyResponseCopyWith<$Res> {
  _$CurrencyResponseCopyWithImpl(this._value, this._then);

  final CurrencyResponse _value;
  // ignore: unused_field
  final $Res Function(CurrencyResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrencyResponseCopyWith<$Res>
    implements $CurrencyResponseCopyWith<$Res> {
  factory _$$_CurrencyResponseCopyWith(
          _$_CurrencyResponse value, $Res Function(_$_CurrencyResponse) then) =
      __$$_CurrencyResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Currency> result});
}

/// @nodoc
class __$$_CurrencyResponseCopyWithImpl<$Res>
    extends _$CurrencyResponseCopyWithImpl<$Res>
    implements _$$_CurrencyResponseCopyWith<$Res> {
  __$$_CurrencyResponseCopyWithImpl(
      _$_CurrencyResponse _value, $Res Function(_$_CurrencyResponse) _then)
      : super(_value, (v) => _then(v as _$_CurrencyResponse));

  @override
  _$_CurrencyResponse get _value => super._value as _$_CurrencyResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_CurrencyResponse(
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyResponse implements _CurrencyResponse {
  const _$_CurrencyResponse({required final List<Currency> result})
      : _result = result;

  factory _$_CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyResponseFromJson(json);

  final List<Currency> _result;
  @override
  List<Currency> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'CurrencyResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyResponse &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_CurrencyResponseCopyWith<_$_CurrencyResponse> get copyWith =>
      __$$_CurrencyResponseCopyWithImpl<_$_CurrencyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyResponseToJson(
      this,
    );
  }
}

abstract class _CurrencyResponse implements CurrencyResponse {
  const factory _CurrencyResponse({required final List<Currency> result}) =
      _$_CurrencyResponse;

  factory _CurrencyResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrencyResponse.fromJson;

  @override
  List<Currency> get result;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyResponseCopyWith<_$_CurrencyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
