// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deposit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Deposit _$DepositFromJson(Map<String, dynamic> json) {
  return _Deposit.fromJson(json);
}

/// @nodoc
mixin _$Deposit {
  String get code => throw _privateConstructorUsedError;
  List<Details> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositCopyWith<Deposit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositCopyWith<$Res> {
  factory $DepositCopyWith(Deposit value, $Res Function(Deposit) then) =
      _$DepositCopyWithImpl<$Res>;
  $Res call({String code, List<Details> details});
}

/// @nodoc
class _$DepositCopyWithImpl<$Res> implements $DepositCopyWith<$Res> {
  _$DepositCopyWithImpl(this._value, this._then);

  final Deposit _value;
  // ignore: unused_field
  final $Res Function(Deposit) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>,
    ));
  }
}

/// @nodoc
abstract class _$$_DepositCopyWith<$Res> implements $DepositCopyWith<$Res> {
  factory _$$_DepositCopyWith(
          _$_Deposit value, $Res Function(_$_Deposit) then) =
      __$$_DepositCopyWithImpl<$Res>;
  @override
  $Res call({String code, List<Details> details});
}

/// @nodoc
class __$$_DepositCopyWithImpl<$Res> extends _$DepositCopyWithImpl<$Res>
    implements _$$_DepositCopyWith<$Res> {
  __$$_DepositCopyWithImpl(_$_Deposit _value, $Res Function(_$_Deposit) _then)
      : super(_value, (v) => _then(v as _$_Deposit));

  @override
  _$_Deposit get _value => super._value as _$_Deposit;

  @override
  $Res call({
    Object? code = freezed,
    Object? details = freezed,
  }) {
    return _then(_$_Deposit(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Deposit implements _Deposit {
  const _$_Deposit({required this.code, required final List<Details> details})
      : _details = details;

  factory _$_Deposit.fromJson(Map<String, dynamic> json) =>
      _$$_DepositFromJson(json);

  @override
  final String code;
  final List<Details> _details;
  @override
  List<Details> get details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'Deposit(code: $code, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deposit &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  _$$_DepositCopyWith<_$_Deposit> get copyWith =>
      __$$_DepositCopyWithImpl<_$_Deposit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepositToJson(
      this,
    );
  }
}

abstract class _Deposit implements Deposit {
  const factory _Deposit(
      {required final String code,
      required final List<Details> details}) = _$_Deposit;

  factory _Deposit.fromJson(Map<String, dynamic> json) = _$_Deposit.fromJson;

  @override
  String get code;
  @override
  List<Details> get details;
  @override
  @JsonKey(ignore: true)
  _$$_DepositCopyWith<_$_Deposit> get copyWith =>
      throw _privateConstructorUsedError;
}
