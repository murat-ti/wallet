// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fields.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  String get field => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsCopyWith<Fields> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsCopyWith<$Res> {
  factory $FieldsCopyWith(Fields value, $Res Function(Fields) then) =
      _$FieldsCopyWithImpl<$Res>;
  $Res call({String field, String value});
}

/// @nodoc
class _$FieldsCopyWithImpl<$Res> implements $FieldsCopyWith<$Res> {
  _$FieldsCopyWithImpl(this._value, this._then);

  final Fields _value;
  // ignore: unused_field
  final $Res Function(Fields) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FieldsCopyWith<$Res> implements $FieldsCopyWith<$Res> {
  factory _$$_FieldsCopyWith(_$_Fields value, $Res Function(_$_Fields) then) =
      __$$_FieldsCopyWithImpl<$Res>;
  @override
  $Res call({String field, String value});
}

/// @nodoc
class __$$_FieldsCopyWithImpl<$Res> extends _$FieldsCopyWithImpl<$Res>
    implements _$$_FieldsCopyWith<$Res> {
  __$$_FieldsCopyWithImpl(_$_Fields _value, $Res Function(_$_Fields) _then)
      : super(_value, (v) => _then(v as _$_Fields));

  @override
  _$_Fields get _value => super._value as _$_Fields;

  @override
  $Res call({
    Object? field = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Fields(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fields implements _Fields {
  const _$_Fields({required this.field, required this.value});

  factory _$_Fields.fromJson(Map<String, dynamic> json) =>
      _$$_FieldsFromJson(json);

  @override
  final String field;
  @override
  final String value;

  @override
  String toString() {
    return 'Fields(field: $field, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fields &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_FieldsCopyWith<_$_Fields> get copyWith =>
      __$$_FieldsCopyWithImpl<_$_Fields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldsToJson(
      this,
    );
  }
}

abstract class _Fields implements Fields {
  const factory _Fields(
      {required final String field, required final String value}) = _$_Fields;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$_Fields.fromJson;

  @override
  String get field;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_FieldsCopyWith<_$_Fields> get copyWith =>
      throw _privateConstructorUsedError;
}
