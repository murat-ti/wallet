// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  bool get isDepositEnabled => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ticker')
  String get ticker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call(
      {bool isDepositEnabled,
      String icon,
      String name,
      String code,
      @JsonKey(name: 'Ticker') String ticker});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object? isDepositEnabled = freezed,
    Object? icon = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_value.copyWith(
      isDepositEnabled: isDepositEnabled == freezed
          ? _value.isDepositEnabled
          : isDepositEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isDepositEnabled,
      String icon,
      String name,
      String code,
      @JsonKey(name: 'Ticker') String ticker});
}

/// @nodoc
class __$$_CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$$_CurrencyCopyWith<$Res> {
  __$$_CurrencyCopyWithImpl(
      _$_Currency _value, $Res Function(_$_Currency) _then)
      : super(_value, (v) => _then(v as _$_Currency));

  @override
  _$_Currency get _value => super._value as _$_Currency;

  @override
  $Res call({
    Object? isDepositEnabled = freezed,
    Object? icon = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_$_Currency(
      isDepositEnabled: isDepositEnabled == freezed
          ? _value.isDepositEnabled
          : isDepositEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currency implements _Currency {
  const _$_Currency(
      {required this.isDepositEnabled,
      required this.icon,
      required this.name,
      required this.code,
      @JsonKey(name: 'Ticker') required this.ticker});

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyFromJson(json);

  @override
  final bool isDepositEnabled;
  @override
  final String icon;
  @override
  final String name;
  @override
  final String code;
  @override
  @JsonKey(name: 'Ticker')
  final String ticker;

  @override
  String toString() {
    return 'Currency(isDepositEnabled: $isDepositEnabled, icon: $icon, name: $name, code: $code, ticker: $ticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            const DeepCollectionEquality()
                .equals(other.isDepositEnabled, isDepositEnabled) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.ticker, ticker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDepositEnabled),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(ticker));

  @JsonKey(ignore: true)
  @override
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {required final bool isDepositEnabled,
      required final String icon,
      required final String name,
      required final String code,
      @JsonKey(name: 'Ticker') required final String ticker}) = _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  bool get isDepositEnabled;
  @override
  String get icon;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(name: 'Ticker')
  String get ticker;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}
