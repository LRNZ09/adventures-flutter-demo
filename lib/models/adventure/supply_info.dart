import 'package:json_annotation/json_annotation.dart';

part 'supply_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SupplyInfo {
  String? buttonType;
  String? priceSubtitle;
  String? priceTitle;

  SupplyInfo({
    this.buttonType,
    this.priceSubtitle,
    this.priceTitle,
  });

  factory SupplyInfo.fromJson(Map<String, dynamic> json) =>
      _$SupplyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SupplyInfoToJson(this);
}
