import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/lecture/lecture_building.dart';
import '../utils/api_helper.dart';

class LectureBuildingApiRequestedFailure implements Exception {}

class LectureBuildingApi {
  static Future<LectureBuilding> getLectureBuildingApi(int buildingId) async {
    // 토큰 넣어야됨
    // id로 들어가는지 확인해야됨

    try {
      final prefs = await SharedPreferences.getInstance();
      LectureBuilding response = await getByToken(
              "/v1/building/$buildingId", prefs.getString("token")!, null)
          .then((value) => LectureBuilding.fromJson(value.data));
      return response;
    } on DioError {
      throw LectureBuildingApiRequestedFailure();
    }
  }
}
