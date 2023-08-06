// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdventuresResponse _$AdventuresResponseFromJson(Map<String, dynamic> json) =>
    AdventuresResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => Adventure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdventuresResponseToJson(AdventuresResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'data': instance.data,
    };
