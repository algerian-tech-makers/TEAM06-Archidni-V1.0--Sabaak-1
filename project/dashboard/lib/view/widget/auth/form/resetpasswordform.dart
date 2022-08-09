import 'package:dashboard/controller/auth/resetpassord_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/authbutton.dart';
import 'package:dashboard/view/widget/auth/form/customformfield.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
  
 
class AppResetPassowrdForm extends StatelessWidget {
  const AppResetPassowrdForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  ResetPasswordControllerImp controller = Get.put
      (ResetPasswordControllerImp());
    return Form(
        child: Column(
      children: [
       
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
          hint: "Confirm your Password".tr,
          icon: Icons.lock_outline,
        ),
      const SizedBox(height: 20),
         AppCustomAuthButton(
          color: AppColor.primary,
          text: "Confirm Password".tr,
          onPressed: () {
            controller.check();
          
          },
        ),
      ],
    ));
  }
}