import 'package:dio/dio.dart';

import '../constants/constants.dart';

class StudentLoginRequestedFailure implements Exception {}

class postStudentLoginApi {
  static Future<Map<String, dynamic>> getStudentLoginApi(
      int id, String password) async {
    var dio = Dio();
    Map<String, dynamic> data = {"id": id, "password": password};
    try {
      final response = await dio
          .post("$host/v1/student/login", data: data)
          .then((value) => value.data);
      print(response);
      return response;
    } on DioError {
      throw StudentLoginRequestedFailure();
    }
  }
}
