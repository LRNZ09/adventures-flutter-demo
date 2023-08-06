import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Fact {
  int? adventureFactId;
  String? displaySection;
  int? factDefinitionId;
  String? iconUrl;
  String? name;
  String? unit;
  String? value;

  Fact({
    this.adventureFactId,
    this.displaySection,
    this.factDefinitionId,
    this.iconUrl,
    this.name,
    this.unit,
    this.value,
  });

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);

  Map<String, dynamic> toJson() => _$FactToJson(this);
}
