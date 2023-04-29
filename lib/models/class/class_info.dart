import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_info.freezed.dart';
part 'class_info.g.dart';

@freezed
class ClassInfo with _$ClassInfo {
  factory ClassInfo({
    required int id,
    required String name,
    required int professor_id,
    required String lecture_start_time,
    required int building_id,
    required int attendance_valid_time,
  }) = _ClassInfo;
  factory ClassInfo.fromJson(Map<String, dynamic> json) =>
      _$ClassInfoFromJson(json);
}

@freezed
class ClassInfoList with _$ClassInfoList {
  factory ClassInfoList({
    required List<ClassInfo> classInfoList,
  }) = _ClassInfoList;
  factory ClassInfoList.fromJson(Map<String, dynamic> json) =>
      _$ClassInfoListFromJson(json);
}
