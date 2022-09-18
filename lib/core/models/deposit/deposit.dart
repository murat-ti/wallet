import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';

part 'deposit.freezed.dart';
part 'deposit.g.dart';

@freezed
class Deposit with _$Deposit {
  const factory Deposit({
    required String code,
    required List<Details> details,
  }) = _Deposit;

  factory Deposit.fromJson(Map<String, Object?> json) => _$DepositFromJson(json);

  static List<Deposit> depositListFromJson(String str) => List<Deposit>.from(json.decode(str).map((x) {
        return Deposit.fromJson(x);
      }));
}
