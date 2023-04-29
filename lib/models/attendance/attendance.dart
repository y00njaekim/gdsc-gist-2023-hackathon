// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';
part 'attendance.g.dart';

@freezed
class Attendance with _$Attendance {
  factory Attendance({
    required int id,
    required int student_id,
    required String lecture_id,
    required String status,
    required String request_ip,
    required String request_location,
    required String validator,
    required String created_at,
  }) = _Attendance;
  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}

@freezed
class AttendanceList with _$AttendanceList {
  factory AttendanceList({
    required List<Attendance> attendanceList,
  }) = _AttendanceList;
  factory AttendanceList.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListFromJson(json);
}
