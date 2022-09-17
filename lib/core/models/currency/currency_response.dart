import 'package:freezed_annotation/freezed_annotation.dart';
import 'currency.dart';
part 'currency_response.g.dart';
part 'currency_response.freezed.dart';

@freezed
abstract class CurrencyResponse with _$CurrencyResponse {
  const factory CurrencyResponse(
      {required List<Currency> result}) = _CurrencyResponse;
  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);
}