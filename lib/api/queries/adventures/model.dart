import 'package:json_annotation/json_annotation.dart';
import 'package:senior_flutter_challenge/models/adventure/adventure.dart';

part 'model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AdventuresResponse {
  int count;
  String? next;
  String? previous;
  List<Adventure> data;

  AdventuresResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.data,
  });

  factory AdventuresResponse.fromJson(Map<String, dynamic> json) =>
      _$AdventuresResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdventuresResponseToJson(this);
}
