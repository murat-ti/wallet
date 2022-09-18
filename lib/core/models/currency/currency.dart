import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required bool isDepositEnabled,
    required String icon,
    required String name,
    required String code,
    @JsonKey(name: 'Ticker')
    required String ticker,
  }) = _Currency;

  factory Currency.fromJson(Map<String, Object?> json)
  => _$CurrencyFromJson(json);

  static List<Currency> currencyListFromJson(String str) => List<Currency>.from(json.decode(str).map((x) {
    return Currency.fromJson(x);
  }));
}