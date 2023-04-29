import 'package:dio/dio.dart';
import 'package:ga/utils/api_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/student/student.dart';

class StudentInfoApiRequestedFailure implements Exception {}

class StudentInfoApi {
  static Future<Student> getStudentInfoApi() async {
    // 토큰 넣어야됨
    // id로 들어가는지 확인해야됨

    try {
      final prefs = await SharedPreferences.getInstance();
      Student response =
          await getByToken("/v1/student/info", prefs.getString("token")!, null)
              .then((value) => Student.fromJson(value.data));
      return response;
    } on DioError {
      throw StudentInfoApiRequestedFailure();
    }
  }
}
