// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture_building.freezed.dart';
part 'lecture_building.g.dart';

@freezed
class LectureBuilding with _$LectureBuilding {
  factory LectureBuilding({
    required int id,
    required String name,
    required String location,
  }) = _LectureBuilding;
  factory LectureBuilding.fromJson(Map<String, dynamic> json) =>
      _$LectureBuildingFromJson(json);
}
