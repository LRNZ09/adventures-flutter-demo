import 'package:json_annotation/json_annotation.dart';

part 'badge.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Badge {
  String? colorScheme;
  String? icon;
  String? title;

  Badge({
    this.colorScheme,
    this.icon,
    this.title,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}
