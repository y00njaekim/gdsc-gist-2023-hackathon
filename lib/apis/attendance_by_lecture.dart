import 'package:dio/dio.dart';
import 'package:ga/models/attendance/attendance.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/api_helper.dart';

class AttendanceByLectureApiRequestedFailure implements Exception {}

class AttendanceListByLecture {
  static Future<AttendanceList> getAttendanceByLectureApi(
      String lecture) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      AttendanceList response = await getByToken(
              "/v1/attendance/student/lecture/$lecture",
              prefs.getString("token")!,
              null)
          .then((value) =>
              AttendanceList.fromJson({"attendanceList": value.data}));
      return response;
    } on DioError {
      throw AttendanceByLectureApiRequestedFailure();
    }
  }
}
