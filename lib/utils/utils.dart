import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:asn1lib/asn1lib.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:ga/constants/constants.dart';
import 'package:geolocator/geolocator.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:pointycastle/export.dart';

int ipStringToInt(String ip) {
  List<String> octets = ip.split('.');
  int intIP = 0;
  for (String octet in octets) {
    intIP = (intIP << 8) | int.parse(octet);
  }
  return intIP;
}

String intToIpString(int ip) {
  return '${(ip >> 24) & 0xFF}.${(ip >> 16) & 0xFF}.${(ip >> 8) & 0xFF}.${ip & 0xFF}';
}

Future<String> getNetworkAddress() async {
  /* Omitted
   * wifiName, wifiBSSID, wifiIPv6, wifiGatewayIP, wifiBroadcast
   */
  final NetworkInfo networkInfo = NetworkInfo();
  String? wifiIPv4, wifiSubmask;

  try {
    wifiIPv4 = await networkInfo.getWifiIP();
  } on PlatformException {
    wifiIPv4 = 'Failed to get Wifi IPv4';
  }

  try {
    if (!Platform.isWindows) {
      wifiSubmask = await networkInfo.getWifiSubmask();
    }
  } on PlatformException {
    wifiSubmask = 'Failed to get Wifi submask address';
  }

  int ipv4Int = ipStringToInt(wifiIPv4!);
  int submaskInt = ipStringToInt(wifiSubmask!);

  int resultInt = ipv4Int & submaskInt;

  String resultIP = intToIpString(resultInt);

  return resultIP;
}

Future<String?> getIPAddress() async {
  final NetworkInfo networkInfo = NetworkInfo();
  String? wifiIPv4;

  try {
    wifiIPv4 = await networkInfo.getWifiIP();
  } on PlatformException {
    // wifiIPv4 = 'Failed to get Wifi IPv4';
  }
  // wifiIPv4 ??= 'Wifi is not connected';

  return wifiIPv4;
}

Future<bool> isNetworkConnected() async {
  final NetworkInfo networkInfo = NetworkInfo();
  String? wifiIPv4;

  try {
    wifiIPv4 = await networkInfo.getWifiIP();
  } on PlatformException {
    wifiIPv4 = 'Failed to get Wifi IPv4';
  }
  if (wifiIPv4 == null) {
    return false;
  }
  return true;
}

/// Return the current location of the device
/// You can use .latitude and .longitude to get the location
Future<Position?> getCurrentLocation() async {
  Position? position;
  try {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  } catch (e) {
    debugPrint(e.toString());
  }
  return position;
}

// String encryptJson(Map<String, dynamic> jsonString, String publicKey) {
String encryptJson(String jsonString, String publicKey) {
  // String jsonString = jsonEncode(jsonData);
  RSAPublicKey rsaPublicKey = parsePublicKey(publicKey);

  final encrypter = OAEPEncoding(RSAEngine())
    ..init(true, PublicKeyParameter<RSAPublicKey>(rsaPublicKey));

  Uint8List inputBytes = Uint8List.fromList(utf8.encode(jsonString));
  Uint8List encryptedBytes = encrypter.process(inputBytes);
  String encryptedBase64 = base64.encode(encryptedBytes);

  return encryptedBase64;
}

RSAPublicKey parsePublicKey(String publicKey) {
  Uint8List publicKeyBytes = base64.decode(publicKey);
  ASN1Parser parser = ASN1Parser(publicKeyBytes);
  ASN1Sequence sequence = parser.nextObject() as ASN1Sequence;
  ASN1Integer modulus = sequence.elements[0] as ASN1Integer;
  ASN1Integer exponent = sequence.elements[1] as ASN1Integer;

  return RSAPublicKey(modulus.valueAsBigInteger!, exponent.valueAsBigInteger!);
}

Future<Response> encryptRequest(
    String path, String token, Map<String, dynamic> params) async {
  final jsonString = json.encode(params);
  const publicKey =
      'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnhg2vsaTfO+YqUCzEF3sUTf4dKgp8/5fxwPfmTkuWj/TzfGk5KoyFMZ/YroJXraKb9CVmgySn5x8ZNLLLuVmLOqMLuN6smyJEcV2FRe2Whaj25NX2ti3iQ2pWL7f8xyrk3U+X5SkC8gSdmrtEl/Khq/PIKrM9ITHaWy6RXHFAqpmXVFrbQcDapGzuhxxDKMCMqzYMEt6Qr69JZK3uKp0bPfpOMHVx/uPXaSVQyf33nrVS47Qu+Q5R/feD1DisaYBr1BNZKPffn40o5leEa5WO4iu29ryOl8rnoOhhV6ss+eT0k7bglierno4598FVjG0O799qc1zUNLqBfsC4LxQcwIDAQAB';
  final encryptedData = encryptJson(jsonString, publicKey);
  final options = Options(
    headers: {
      "Authorization": "Bearer $token",
      "Content-Type": "application/json",
      "X-Api-Key": "my_api_key",
    },
  );

  final dio = Dio();
  final response =
      await dio.post("$host$path", options: options, data: encryptedData);
  return response;
}

/*
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';
import 'package:dio/dio.dart';

Future<Response> encryptRequest(String path, String token, Map<String, dynamic> params) async {
  final publicKey = await _getPublicKey(); // 공개키 가져오기

  final cipher = PKCS1Encoding(RSAEngine()); // RSA 암호화 객체 생성
  cipher.init(true, PublicKeyParameter<RSAPublicKey>(publicKey)); // 공개키로 초기화
  final encryptedData = cipher.process(utf8.encode(json.encode(params))); // 요청 데이터 암호화

  final options = Options(
    headers: {
      "Authorization": "Bearer $token",
      "Content-Type": "application/json",
      "X-Api-Key": "my_api_key",
    },
  );

  final dio = Dio();
  final response = await dio.post("$host$path", options: options, data: encryptedData);

  return response;
}

Future<RSAPublicKey> _getPublicKey() async {
  // 서버로부터 공개키 가져오기
  final response = await http.get(Uri.parse('https://example.com/publicKey'));
  final publicKeyString = response.body;
  
  // 공개키 디코딩
  final publicKey = RSAKeyParser().parse(publicKeyString) as RSAPublicKey;

  return publicKey;
}

Future<Response> encryptRequest(
    String path, String token, Map<String, dynamic> params) async {
  // final publicKey = await _getPublicKey(); // 공개키 가져오기
  const  publicKey = '''-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnhg2vsaTfO+YqUCzEF3s
UTf4dKgp8/5fxwPfmTkuWj/TzfGk5KoyFMZ/YroJXraKb9CVmgySn5x8ZNLLLuVm
LOqMLuN6smyJEcV2FRe2Whaj25NX2ti3iQ2pWL7f8xyrk3U+X5SkC8gSdmrtEl/K
hq/PIKrM9ITHaWy6RXHFAqpmXVFrbQcDapGzuhxxDKMCMqzYMEt6Qr69JZK3uKp0
bPfpOMHVx/uPXaSVQyf33nrVS47Qu+Q5R/feD1DisaYBr1BNZKPffn40o5leEa5W
O4iu29ryOl8rnoOhhV6ss+eT0k7bglierno4598FVjG0O799qc1zUNLqBfsC4LxQ
cwIDAQAB
-----END PUBLIC KEY-----''';

  final cipher = PKCS1Encoding(RSAEngine()); // RSA 암호화 객체 생성
  cipher.init(true, PublicKeyParameter<RSAPublicKey>(publicKey)); // 공개키로 초기화
  final encryptedData =
      cipher.process(utf8.encode(json.encode(params))); // 요청 데이터 암호화

  final options = Options(
    headers: {
      "Authorization": "Bearer $token",
      "Content-Type": "application/json",
      "X-Api-Key": "my_api_key",
    },
  );

  final dio = Dio();
  final response =
      await dio.post("$host$path", options: options, data: encryptedData);

  return response;
}

Future<RSAPublicKey> _getPublicKey() async {
  // 서버로부터 공개키 가져오기
  final response = await http.get(Uri.parse('https://example.com/publicKey'));
  final publicKeyString = response.body;

  // 공개키 디코딩
  final publicKey = RSAKeyParser().parse(publicKeyString) as RSAPublicKey;

  return publicKey;
}
*/