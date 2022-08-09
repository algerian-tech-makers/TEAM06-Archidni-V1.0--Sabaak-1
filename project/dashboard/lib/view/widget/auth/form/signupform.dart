import 'package:dashboard/controller/auth/signup_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/authbutton.dart';
import 'package:dashboard/view/widget/auth/form/customformfield.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
  

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller =
        Get.put(SignUpControllerImp());
    return Form(
        child: Column(
      children: [
        AppCustomFormFaild(
          controller: controller.username,
          keyboardType:
              TextInputType.text,
          lable: 'full_name'.tr,
          hint: 'Enter your full name'.tr,
          icon: Icons.person_outline,
          obscureText: false,
        ),
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
        AppCustomFormFaild(
          controller: controller.confirmPassword,
          keyboardType:
              TextInputType.visiblePassword,
          obscureText: true,
          lable: "Confirm Password".tr,
          hint: 'Confirm your Password'.tr,
          icon: Icons.lock_outline,
        ),
        const SizedBox(
          height: 20,
        ),
        AppCustomAuthButton(
          color: AppColor.primary,
          text: 'signup'.tr,
          onPressed: () {
            controller.signUp();
          
          },
        ),
      ],
    ));
  }
}
