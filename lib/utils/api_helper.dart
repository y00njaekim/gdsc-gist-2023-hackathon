import 'package:dio/dio.dart';

import '../constants/constants.dart';

Future<Response> getByToken(
    String path, String token, Map<String, dynamic>? params) async {
  var dio = Dio();

  final options = Options(
    headers: {"Authorization": "Bearer $token"},
  );
  Response res =
      await dio.get("$host$path", options: options, queryParameters: params);

  return res;
}

Future<Response> postByToken<T>(String path, String token, T data) async {
  var dio = Dio();

  final options = Options(
    headers: {
      "Authorization": "Bearer $token",
    },
  );
  Response res = await dio.post("$host$path", data: data, options: options);
  return res;
}

Future<Response> patchByToken<T>(String path, String token, T data) async {
  var dio = Dio();

  final options = Options(
    headers: {
      "Authorization": "Bearer $token",
    },
  );
  Response res = await dio.patch("$host$path", data: data, options: options);

  return res;
}

Future<Response> deleteByToken(
    String path, String token, Map<String, dynamic>? params) async {
  var dio = Dio();

  final options = Options(
    headers: {"Authorization": "Bearer $token"},
  );

  Response res =
      await dio.delete("$host$path", options: options, queryParameters: params);
  return res;
}

Future<Response> putByToken<T>(String path, String token,
    {T? data, Map<String, dynamic>? queryParams}) async {
  var dio = Dio();

  final options = Options(
    headers: {
      "Authorization": "Bearer $token",
    },
  );

  Response res = await dio.put("$host$path",
      data: data, queryParameters: queryParams, options: options);
  return res;
}
