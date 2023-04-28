import 'dart:io';

import 'package:flutter/services.dart';
import 'package:network_info_plus/network_info_plus.dart';

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

Future<String> getIPAddress() async {
  final NetworkInfo networkInfo = NetworkInfo();
  String? wifiIPv4;

  try {
    wifiIPv4 = await networkInfo.getWifiIP();
  } on PlatformException {
    wifiIPv4 = 'Failed to get Wifi IPv4';
  }

  return wifiIPv4!;
}
