import 'package:dashboard/controller/auth/fogetpassword_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/authbutton.dart';
import 'package:dashboard/view/widget/auth/form/customformfield.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
  
 
class AppForgetPasswordForm
    extends StatelessWidget {
  const AppForgetPasswordForm({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
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
        const SizedBox(height: 25),
        AppCustomAuthButton(
          color: AppColor.primary,
          text: 'Verify'.tr,
          onPressed: () {
            controller.goToverfiyCode();
          },
        ),
      ],
    ));
  }
}
