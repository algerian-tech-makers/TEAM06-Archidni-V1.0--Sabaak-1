// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
abstract class VerifyEmailController
    extends GetxController {
  check(code);
  goToHome();
  goToemail();
}

class VerifyEmailControllerImp
    extends VerifyEmailController {
  late TextEditingController code;

  @override
  check(code) {
    //change the code here
    if (code == "44444") {
      goToHome();
    } else {
      Get.snackbar(
        "Error".tr,
        "Code not match".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 4),
      );
    }
  }

  @override
  goToHome() {
    Get.offAllNamed(AppRoutes.home);
  }

  @override
  void onInit() {
    code = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    code.dispose();
    super.dispose();
  }

  @override
  goToemail() {
    Get.toNamed(AppRoutes.signup);
  }
}
