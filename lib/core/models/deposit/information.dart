import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'information.freezed.dart';
part 'information.g.dart';

@freezed
class Information with _$Information {
  const factory Information({
    required String description,
  }) = _Information;

  factory Information.fromJson(Map<String, Object?> json) => _$InformationFromJson(json);

  static List<Information> informationListFromJson(String str) => List<Information>.from(json.decode(str).map((x) {
        return Information.fromJson(x);
      }));
}
