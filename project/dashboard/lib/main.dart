// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/controller/backend/authstate_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/core/services/services.dart';
import 'package:dashboard/localization/transilation.dart';

import 'package:dashboard/root.dart';
 import 'package:dashboard/view/screens/home.dart';
import 'package:dashboard/view/screens/onbording.dart';
import 'package:dashboard/view/widget/language/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController lancontroller =
        Get.put(LocaleController());
    AuthStateConrollerImp authStateConroller =
        Get.put(AuthStateConrollerImp());
     
    return GetMaterialApp(
      translations: AppTranslations(),
      debugShowCheckedModeBanner: false,
      locale: lancontroller.language,
      theme: ThemeData(
        fontFamily: AppFont.primary,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              height: 2.3,
              fontFamily: AppFont.primary),
          headline1: TextStyle(
              color: Colors.black, fontSize: 25),
        ),
      ),
      home:  authStateConroller.isuserloggedin
          ? const Home()
          : const OnBording(),
        
      routes: routes,
    );
  }
}
