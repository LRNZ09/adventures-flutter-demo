// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fact _$FactFromJson(Map<String, dynamic> json) => Fact(
      adventureFactId: json['adventure_fact_id'] as int?,
      displaySection: json['display_section'] as String?,
      factDefinitionId: json['fact_definition_id'] as int?,
      iconUrl: json['icon_url'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FactToJson(Fact instance) => <String, dynamic>{
      'adventure_fact_id': instance.adventureFactId,
      'display_section': instance.displaySection,
      'fact_definition_id': instance.factDefinitionId,
      'icon_url': instance.iconUrl,
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
    };
