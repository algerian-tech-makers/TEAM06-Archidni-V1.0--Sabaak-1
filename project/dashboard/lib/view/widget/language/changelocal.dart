// ignore_for_file: unused_local_variable, depend_on_referenced_packages


 import 'package:dashboard/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
 
class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences
        .setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
     
    String? sharedPrefLang = myServices
        .sharedPreferences
        .getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("ar");
    } else {
      language =
          language = const Locale("ar");
    }
    super.onInit();
  }
}
