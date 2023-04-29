import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/count/count.dart';
import '../utils/api_helper.dart';

class AttendanceCountLectureApiRequestedFailure implements Exception {}

class AttendanceCountLecture {
  static Future<Count> getAttendanceCountLectureApi(String lecture) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      Count response = await getByToken(
              "/v1/attendance/student/lecture/$lecture/count",
              prefs.getString("token")!,
              null)
          .then((value) => Count.fromJson(value.data));
      return response;
    } on DioError {
      throw AttendanceCountLectureApiRequestedFailure();
    }
  }
}
