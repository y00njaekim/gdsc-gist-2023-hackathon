// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_building.freezed.dart';
part 'class_building.g.dart';

@freezed
class ClassBuilding with _$ClassBuilding {
  factory ClassBuilding({
    required int id,
    required String name,
    required String location,
  }) = _ClassBuilding;
  factory ClassBuilding.fromJson(Map<String, dynamic> json) =>
      _$ClassBuildingFromJson(json);
}
