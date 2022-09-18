// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Deposit _$$_DepositFromJson(Map<String, dynamic> json) => _$_Deposit(
      code: json['code'] as String,
      details: (json['details'] as List<dynamic>)
          .map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DepositToJson(_$_Deposit instance) =>
    <String, dynamic>{
      'code': instance.code,
      'details': instance.details,
    };
