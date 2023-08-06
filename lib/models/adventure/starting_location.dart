import 'package:json_annotation/json_annotation.dart';

part 'starting_location.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class StartingLocation {
  String? imageUrl;
  String? name;

  StartingLocation({
    this.imageUrl,
    this.name,
  });

  factory StartingLocation.fromJson(Map<String, dynamic> json) =>
      _$StartingLocationFromJson(json);

  Map<String, dynamic> toJson() => _$StartingLocationToJson(this);
}
