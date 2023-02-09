import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

bool isPhone(BuildContext context) {
  // The equivalent of the "smallestWidth" qualifier on Android.
  var smallestDimension = MediaQuery.of(context).size.shortestSide;

  // Determine if we should use mobile layout or not. The
  // number 600 here is a common breakpoint for a typical
  // 7-inch tablet.
  final useMobileLayout = smallestDimension < 744;

  return useMobileLayout;
}

Future<bool> checkIfConnected() async {
  return await InternetConnectionChecker().hasConnection;
}

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

late String deviceModelString;

List<String> deviceModelsAdditionalSpaceRequired = [
  'iPhone X Global',
  'iPhone X GSM',
  'iPhone XS',
  'iPhone XS Max',
  'iPhone XS Max Global',
  'iPhone XR',
  'iPhone 11',
  'iPhone 11 Pro',
  'iPhone 11 Pro Max',
  'iPhone 12 Mini',
  'iPhone 12',
  'iPhone 12 Pro',
  'iPhone 12 Pro Max',
  'iPhone 13 Pro',
  'iPhone 13 Pro Max',
  'iPhone 14 Pro',
  'iPhone 14 Pro Max',
  'iPhone 13 Mini',
  'iPhone 13',
  'iPhone Simulator',
  'iPhone Simulator ARM',
];

List<String> additionalNotchSpaceRequiredList = [
  'iPhone 14 Pro',
  'iPhone 14 Pro Max',
  'iPhone Simulator ARM',
];

void prepareDeviceInformation() async {
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    deviceModelString = androidInfo.model;
  } else {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    deviceModelString = iosInfo.name ?? "";
  }
}

bool get hasNotch => deviceModelsAdditionalSpaceRequired.contains(deviceModelString);
