import 'package:json_annotation/json_annotation.dart';

import 'content_source.dart';

part 'contents.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Contents {
  String? contentMode;
  ContentSource? contentSource;
  String? contentType;
  String contentUrl;
  String id;
  bool? isHeaderForThePlan;
  bool? isPrivate;

  Contents({
    this.contentMode,
    this.contentSource,
    this.contentType,
    required this.contentUrl,
    required this.id,
    this.isHeaderForThePlan,
    this.isPrivate,
  });

  factory Contents.fromJson(Map<String, dynamic> json) =>
      _$ContentsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentsToJson(this);
}
