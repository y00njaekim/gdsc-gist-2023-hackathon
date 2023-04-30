import 'package:dio/dio.dart';
import 'package:ga/models/attendance/attendance.dart';
import 'package:ga/utils/api_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AttendanceCreateApiRequestedFailure implements Exception {}

class AttendanceCreateApi {
  static Future<Attendance> postAttendanceCreateApi(
      String location, String ip, String lectureName) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      Attendance response = await postByToken(
          "/v1/attendance", prefs.getString("token")!, {
        'lecture_id': lectureName,
        'request_ip': ip,
        'request_location': location
      }).then((value) => Attendance.fromJson(value.data));
      return response;
    } on DioError {
      throw AttendanceCreateApiRequestedFailure();
    }
  }
}
