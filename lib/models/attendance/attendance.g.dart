// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attendance _$$_AttendanceFromJson(Map<String, dynamic> json) =>
    _$_Attendance(
      id: json['id'] as int,
      student_id: json['student_id'] as int,
      lecture_id: json['lecture_id'] as String,
      status: json['status'] as String,
      request_ip: json['request_ip'] as String,
      request_location: json['request_location'] as String,
      validator: json['validator'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_AttendanceToJson(_$_Attendance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.student_id,
      'lecture_id': instance.lecture_id,
      'status': instance.status,
      'request_ip': instance.request_ip,
      'request_location': instance.request_location,
      'validator': instance.validator,
      'created_at': instance.created_at,
    };

_$_AttendanceList _$$_AttendanceListFromJson(Map<String, dynamic> json) =>
    _$_AttendanceList(
      attendanceList: (json['attendanceList'] as List<dynamic>)
          .map((e) => Attendance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendanceListToJson(_$_AttendanceList instance) =>
    <String, dynamic>{
      'attendanceList': instance.attendanceList,
    };
