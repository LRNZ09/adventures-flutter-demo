import 'package:json_annotation/json_annotation.dart';

part 'area_location.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AreaLocation {
  String? name;

  AreaLocation({this.name});

  factory AreaLocation.fromJson(Map<String, dynamic> json) =>
      _$AreaLocationFromJson(json);

  Map<String, dynamic> toJson() => _$AreaLocationToJson(this);
}
