// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LectureInfo _$$_LectureInfoFromJson(Map<String, dynamic> json) =>
    _$_LectureInfo(
      id: json['id'] as int,
      name: json['name'] as String,
      professor_id: json['professor_id'] as int,
      lecture_start_time: json['lecture_start_time'] as String,
      building_id: json['building_id'] as int,
      attendance_valid_time: json['attendance_valid_time'] as int,
    );

Map<String, dynamic> _$$_LectureInfoToJson(_$_LectureInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'professor_id': instance.professor_id,
      'lecture_start_time': instance.lecture_start_time,
      'building_id': instance.building_id,
      'attendance_valid_time': instance.attendance_valid_time,
    };

_$_LectureInfoList _$$_LectureInfoListFromJson(Map<String, dynamic> json) =>
    _$_LectureInfoList(
      lectureInfoList: (json['lectureInfoList'] as List<dynamic>)
          .map((e) => LectureInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LectureInfoListToJson(_$_LectureInfoList instance) =>
    <String, dynamic>{
      'lectureInfoList': instance.lectureInfoList,
    };
