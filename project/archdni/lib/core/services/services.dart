// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences =
        await SharedPreferences.getInstance();
        SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
