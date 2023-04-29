// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture_info.freezed.dart';
part 'lecture_info.g.dart';

@freezed
class LectureInfo with _$LectureInfo {
  factory LectureInfo({
    required int id,
    required String name,
    required int professor_id,
    required String lecture_start_time,
    required int building_id,
    required int attendance_valid_time,
  }) = _LectureInfo;
  factory LectureInfo.fromJson(Map<String, dynamic> json) =>
      _$LectureInfoFromJson(json);
}

@freezed
class LectureInfoList with _$LectureInfoList {
  factory LectureInfoList({
    required List<LectureInfo> lectureInfoList,
  }) = _LectureInfoList;
  factory LectureInfoList.fromJson(Map<String, dynamic> json) =>
      _$LectureInfoListFromJson(json);
}
