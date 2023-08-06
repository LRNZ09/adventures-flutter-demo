import 'package:json_annotation/json_annotation.dart';

part 'grid_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GridInfo {
  String? iconUrl;
  String? name;
  String? schema;
  String? value;

  GridInfo({
    this.iconUrl,
    this.name,
    this.schema,
    this.value,
  });

  factory GridInfo.fromJson(Map<String, dynamic> json) =>
      _$GridInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GridInfoToJson(this);
}
