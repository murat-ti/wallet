// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  String get title => throw _privateConstructorUsedError;
  List<Fields> get fields => throw _privateConstructorUsedError;
  List<Information> get information => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res>;
  $Res call({String title, List<Fields> fields, List<Information> information});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res> implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  final Details _value;
  // ignore: unused_field
  final $Res Function(Details) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? fields = freezed,
    Object? information = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Fields>,
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as List<Information>,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$_DetailsCopyWith(
          _$_Details value, $Res Function(_$_Details) then) =
      __$$_DetailsCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Fields> fields, List<Information> information});
}

/// @nodoc
class __$$_DetailsCopyWithImpl<$Res> extends _$DetailsCopyWithImpl<$Res>
    implements _$$_DetailsCopyWith<$Res> {
  __$$_DetailsCopyWithImpl(_$_Details _value, $Res Function(_$_Details) _then)
      : super(_value, (v) => _then(v as _$_Details));

  @override
  _$_Details get _value => super._value as _$_Details;

  @override
  $Res call({
    Object? title = freezed,
    Object? fields = freezed,
    Object? information = freezed,
  }) {
    return _then(_$_Details(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fields: fields == freezed
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Fields>,
      information: information == freezed
          ? _value._information
          : information // ignore: cast_nullable_to_non_nullable
              as List<Information>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Details implements _Details {
  const _$_Details(
      {required this.title,
      required final List<Fields> fields,
      required final List<Information> information})
      : _fields = fields,
        _information = information;

  factory _$_Details.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsFromJson(json);

  @override
  final String title;
  final List<Fields> _fields;
  @override
  List<Fields> get fields {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  final List<Information> _information;
  @override
  List<Information> get information {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_information);
  }

  @override
  String toString() {
    return 'Details(title: $title, fields: $fields, information: $information)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Details &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality()
                .equals(other._information, _information));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_information));

  @JsonKey(ignore: true)
  @override
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      __$$_DetailsCopyWithImpl<_$_Details>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {required final String title,
      required final List<Fields> fields,
      required final List<Information> information}) = _$_Details;

  factory _Details.fromJson(Map<String, dynamic> json) = _$_Details.fromJson;

  @override
  String get title;
  @override
  List<Fields> get fields;
  @override
  List<Information> get information;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      throw _privateConstructorUsedError;
}
