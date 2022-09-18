// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      balanceDecimals: (json['balanceDecimals'] as num).toDouble(),
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'balanceDecimals': instance.balanceDecimals,
      'code': instance.code,
    };
