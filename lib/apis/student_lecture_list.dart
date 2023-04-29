import 'package:dio/dio.dart';
import 'package:ga/models/lecture/lecture_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/api_helper.dart';

class StudentLectureListApiFailure implements Exception {}

class StudentLectureListApi {
  static Future<LectureInfoList> getStudentLectureList() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await getByToken("/v1/lecture", prefs.getString("token")!, null)
          .then(
        (value) => LectureInfoList.fromJson(
          {"lectureInfoList": value.data},
        ),
      );
    } on DioError {
      throw StudentLectureListApiFailure();
    }
  }
}
