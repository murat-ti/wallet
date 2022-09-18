import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required double balanceDecimals,
    required String code,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json)
  => _$AccountFromJson(json);

  static List<Account> accountListFromJson(String str) => List<Account>.from(json.decode(str).map((x) {
    return Account.fromJson(x);
  }));
}