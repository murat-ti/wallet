// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyResponse _$$_CurrencyResponseFromJson(Map<String, dynamic> json) =>
    _$_CurrencyResponse(
      result: (json['result'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CurrencyResponseToJson(_$_CurrencyResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
