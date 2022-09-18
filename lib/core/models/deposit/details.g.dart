// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Details _$$_DetailsFromJson(Map<String, dynamic> json) => _$_Details(
      title: json['title'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => Fields.fromJson(e as Map<String, dynamic>))
          .toList(),
      information: (json['information'] as List<dynamic>)
          .map((e) => Information.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'title': instance.title,
      'fields': instance.fields,
      'information': instance.information,
    };
