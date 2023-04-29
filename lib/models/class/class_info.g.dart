// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'class_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassInfo _$$_ClassInfoFromJson(Map<String, dynamic> json) => _$_ClassInfo(
      id: json['id'] as int,
      name: json['name'] as String,
      professor_id: json['professor_id'] as int,
      lecture_start_time: json['lecture_start_time'] as String,
      building_id: json['building_id'] as int,
      attendance_valid_time: json['attendance_valid_time'] as int,
    );

Map<String, dynamic> _$$_ClassInfoToJson(_$_ClassInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'professor_id': instance.professor_id,
      'lecture_start_time': instance.lecture_start_time,
      'building_id': instance.building_id,
      'attendance_valid_time': instance.attendance_valid_time,
    };

_$_ClassInfoList _$$_ClassInfoListFromJson(Map<String, dynamic> json) =>
    _$_ClassInfoList(
      classInfoList: (json['classInfoList'] as List<dynamic>)
          .map((e) => ClassInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClassInfoListToJson(_$_ClassInfoList instance) =>
    <String, dynamic>{
      'classInfoList': instance.classInfoList,
    };
