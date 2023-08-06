// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyInfo _$SupplyInfoFromJson(Map<String, dynamic> json) => SupplyInfo(
      buttonType: json['button_type'] as String?,
      priceSubtitle: json['price_subtitle'] as String?,
      priceTitle: json['price_title'] as String?,
    );

Map<String, dynamic> _$SupplyInfoToJson(SupplyInfo instance) =>
    <String, dynamic>{
      'button_type': instance.buttonType,
      'price_subtitle': instance.priceSubtitle,
      'price_title': instance.priceTitle,
    };
