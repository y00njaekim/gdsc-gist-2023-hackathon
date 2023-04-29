import 'package:dio/dio.dart';
import 'package:ga/utils/api_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ValidateIpRequestedFailure implements Exception {}

class ValidateIp {
  static Future<bool> getValidateIp(String ip, String lecture) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = await getByToken(
              "/v1/attendance/lecture/$lecture/validate/ip/$ip",
              prefs.getString("token")!,
              null)
          .then((value) => value.data);

      return result;
    } on DioError {
      throw ValidateIpRequestedFailure();
    }
  }
}
