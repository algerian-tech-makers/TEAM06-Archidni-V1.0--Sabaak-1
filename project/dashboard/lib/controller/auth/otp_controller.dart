// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
abstract class OtpConroller
    extends GetxController {
  check(code);
  goToResetpassword();
  goToemail();
}

class OtpConrollerImp extends OtpConroller {
  late TextEditingController code;

  @override
  check(code) {
    if (code == "44444") {
      goToResetpassword();
    } else {
      Get.snackbar(
        "Error".tr,
        "code not matched".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 4),
      );
    }
  }

  @override
  goToResetpassword() {
    Get.offNamed(AppRoutes.resetPassword);
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
    Get.toNamed(AppRoutes.forgetPassword);
  }
}
