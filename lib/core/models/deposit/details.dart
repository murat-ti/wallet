import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'fields.dart';
import 'information.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  const factory Details({
    required String title,
    required List<Fields> fields,
    required List<Information> information,
  }) = _Details;

  factory Details.fromJson(Map<String, Object?> json) => _$DetailsFromJson(json);

  static List<Details> detailsListFromJson(String str) => List<Details>.from(json.decode(str).map((x) {
        return Details.fromJson(x);
      }));
}
