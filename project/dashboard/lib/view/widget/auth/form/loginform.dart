import 'package:dashboard/controller/auth/login_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/authbutton.dart';
import 'package:dashboard/view/widget/auth/form/customformfield.dart';
import 'package:dashboard/view/widget/auth/text/foggetpassword.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
  

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =
        Get.put(LoginControllerImp());
    return Form(
        child: Column(
      children: [
        AppCustomFormFaild(
          controller: controller.email,
          keyboardType:
              TextInputType.emailAddress,
          lable: 'Email'.tr,
          hint: 'Enter your email'.tr,
          icon: Icons.mail_outline,
          obscureText: false,
        ),
        AppCustomFormFaild(
          controller: controller.password,
          keyboardType:
              TextInputType.visiblePassword,
          obscureText: true,
          lable: 'Password'.tr,
          hint: 'Enter your Password'.tr,
          icon: Icons.lock_outline,
        ),
        const AppForgetPasswordText(),
        AppCustomAuthButton(
          color: AppColor.primary,
          text: 'signin'.tr,
          onPressed: controller.login,
        ),
      ],
    ));
  }
}
