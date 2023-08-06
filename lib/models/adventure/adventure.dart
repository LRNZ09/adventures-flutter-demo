import 'package:json_annotation/json_annotation.dart';

import 'area_location.dart';
import 'badge.dart';
import 'contents.dart';
import 'fact.dart';
import 'grid_info.dart';
import 'starting_location.dart';
import 'supply_info.dart';

part 'adventure.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Adventure {
  String activity;
  String activityIcon;
  int activityId;
  AreaLocation? areaLocation;
  List<Badge>? badges;
  int? bucketListCount;
  List<Contents> contents;
  String description;
  List<Fact>? facts;
  List<GridInfo> gridInfo;
  int id;
  int pk;
  String primaryDescription;
  String? primaryImage;
  String? primaryVideo;
  StartingLocation? startingLocation;
  String? status;
  SupplyInfo? supplyInfo;
  List<String>? tags;
  String? thumbnail;
  bool? ticketOptional;
  String title;

  Adventure({
    required this.activity,
    required this.activityIcon,
    required this.activityId,
    this.areaLocation,
    this.badges,
    this.bucketListCount,
    required this.contents,
    required this.description,
    this.facts,
    required this.gridInfo,
    required this.id,
    required this.pk,
    required this.primaryDescription,
    this.primaryImage,
    this.primaryVideo,
    this.startingLocation,
    this.status,
    this.supplyInfo,
    this.tags,
    this.thumbnail,
    this.ticketOptional,
    required this.title,
  });

  factory Adventure.fromJson(Map<String, dynamic> json) =>
      _$AdventureFromJson(json);

  Map<String, dynamic> toJson() => _$AdventureToJson(this);
}
