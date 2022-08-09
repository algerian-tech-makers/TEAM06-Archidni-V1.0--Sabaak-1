// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
abstract class ResetPasswordController
    extends GetxController {
  check();
  goToSuccessPasswordChanget();
}

class ResetPasswordControllerImp
    extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController confirmPassword;

  @override
  check() {
    if (password.value.text == confirmPassword.value.text) {
      goToSuccessPasswordChanget();
    } else {
      Get.snackbar(
        "Error".tr,
        "Password and Confirm Password not match".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
      );
    }
  }

  @override
  goToSuccessPasswordChanget() {
    Get.offNamed(AppRoutes.home);
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
