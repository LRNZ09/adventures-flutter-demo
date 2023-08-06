// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contents _$ContentsFromJson(Map<String, dynamic> json) => Contents(
      contentMode: json['content_mode'] as String?,
      contentSource: json['content_source'] == null
          ? null
          : ContentSource.fromJson(
              json['content_source'] as Map<String, dynamic>),
      contentType: json['content_type'] as String?,
      contentUrl: json['content_url'] as String,
      id: json['id'] as String,
      isHeaderForThePlan: json['is_header_for_the_plan'] as bool?,
      isPrivate: json['is_private'] as bool?,
    );

Map<String, dynamic> _$ContentsToJson(Contents instance) => <String, dynamic>{
      'content_mode': instance.contentMode,
      'content_source': instance.contentSource,
      'content_type': instance.contentType,
      'content_url': instance.contentUrl,
      'id': instance.id,
      'is_header_for_the_plan': instance.isHeaderForThePlan,
      'is_private': instance.isPrivate,
    };
