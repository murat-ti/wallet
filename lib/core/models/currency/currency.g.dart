// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      isDepositEnabled: json['isDepositEnabled'] as bool,
      icon: json['icon'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      ticker: json['Ticker'] as String,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'isDepositEnabled': instance.isDepositEnabled,
      'icon': instance.icon,
      'name': instance.name,
      'code': instance.code,
      'Ticker': instance.ticker,
    };
