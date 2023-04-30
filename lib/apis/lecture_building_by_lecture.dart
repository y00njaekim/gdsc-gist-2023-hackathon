import 'package:dio/dio.dart';
import 'package:ga/models/lecture/lecture_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/api_helper.dart';

class LectureBuildingApiRequestedFailure implements Exception {}

class LectureBuildingByLectureApi {
  static Future<LectureInfo> getLectureBuildingApi(String lecture) async {
    // 토큰 넣어야됨
    // id로 들어가는지 확인해야됨

    try {
      final prefs = await SharedPreferences.getInstance();
      LectureInfo response = await getByToken(
              "/v1/lecture/$lecture", prefs.getString("token")!, null)
          .then((value) => LectureInfo.fromJson(value.data));
      return response;
    } on DioError {
      throw LectureBuildingApiRequestedFailure();
    }
  }
}
