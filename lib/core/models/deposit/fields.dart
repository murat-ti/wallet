import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fields.freezed.dart';
part 'fields.g.dart';

@freezed
class Fields with _$Fields {
  const factory Fields({
    required String field,
    required String value,
  }) = _Fields;

  factory Fields.fromJson(Map<String, Object?> json) => _$FieldsFromJson(json);

  static List<Fields> fieldsListFromJson(String str) => List<Fields>.from(json.decode(str).map((x) {
        return Fields.fromJson(x);
      }));
}
