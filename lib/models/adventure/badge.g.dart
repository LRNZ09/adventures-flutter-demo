// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
      colorScheme: json['color_scheme'] as String?,
      icon: json['icon'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'color_scheme': instance.colorScheme,
      'icon': instance.icon,
      'title': instance.title,
    };
