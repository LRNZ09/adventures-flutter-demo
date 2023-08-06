import 'package:json_annotation/json_annotation.dart';

part 'content_source.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ContentSource {
  String? author;
  String? id;
  String? name;
  String? title;

  ContentSource({
    this.author,
    this.id,
    this.name,
    this.title,
  });

  factory ContentSource.fromJson(Map<String, dynamic> json) =>
      _$ContentSourceFromJson(json);

  Map<String, dynamic> toJson() => _$ContentSourceToJson(this);
}
