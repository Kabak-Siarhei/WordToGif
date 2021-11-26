// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiList _$ApiListFromJson(Map<String, dynamic> json) => ApiList(
      list: (json['list'] as List<dynamic>)
          .map((e) => ListWords.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiListToJson(ApiList instance) => <String, dynamic>{
      'list': instance.list,
    };
