// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adventure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Adventure _$AdventureFromJson(Map<String, dynamic> json) => Adventure(
      activity: json['activity'] as String,
      activityIcon: json['activity_icon'] as String,
      activityId: json['activity_id'] as int,
      areaLocation: json['area_location'] == null
          ? null
          : AreaLocation.fromJson(
              json['area_location'] as Map<String, dynamic>),
      badges: (json['badges'] as List<dynamic>?)
          ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      bucketListCount: json['bucket_list_count'] as int?,
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Contents.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      facts: (json['facts'] as List<dynamic>?)
          ?.map((e) => Fact.fromJson(e as Map<String, dynamic>))
          .toList(),
      gridInfo: (json['grid_info'] as List<dynamic>)
          .map((e) => GridInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      pk: json['pk'] as int,
      primaryDescription: json['primary_description'] as String,
      primaryImage: json['primary_image'] as String?,
      primaryVideo: json['primary_video'] as String?,
      startingLocation: json['starting_location'] == null
          ? null
          : StartingLocation.fromJson(
              json['starting_location'] as Map<String, dynamic>),
      status: json['status'] as String?,
      supplyInfo: json['supply_info'] == null
          ? null
          : SupplyInfo.fromJson(json['supply_info'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String?,
      ticketOptional: json['ticket_optional'] as bool?,
      title: json['title'] as String,
    );

Map<String, dynamic> _$AdventureToJson(Adventure instance) => <String, dynamic>{
      'activity': instance.activity,
      'activity_icon': instance.activityIcon,
      'activity_id': instance.activityId,
      'area_location': instance.areaLocation,
      'badges': instance.badges,
      'bucket_list_count': instance.bucketListCount,
      'contents': instance.contents,
      'description': instance.description,
      'facts': instance.facts,
      'grid_info': instance.gridInfo,
      'id': instance.id,
      'pk': instance.pk,
      'primary_description': instance.primaryDescription,
      'primary_image': instance.primaryImage,
      'primary_video': instance.primaryVideo,
      'starting_location': instance.startingLocation,
      'status': instance.status,
      'supply_info': instance.supplyInfo,
      'tags': instance.tags,
      'thumbnail': instance.thumbnail,
      'ticket_optional': instance.ticketOptional,
      'title': instance.title,
    };
