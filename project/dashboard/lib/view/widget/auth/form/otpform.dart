// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/controller/auth/fogetpassword_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class AppOtpForm extends StatelessWidget {
  final void Function(String) onSubmit;
  final void Function() onBack;
  const AppOtpForm(
      {Key? key,
      required this.onSubmit,
      required this.onBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());

    return Column(
      children: [
        OtpTextField(
          numberOfFields: 5,
          borderColor: AppColor.primary,
           
          fieldWidth: 45,
          cursorColor: AppColor.secoundry,
          fillColor: AppColor.primary,
          
          onCodeChanged: (String code) {},

          onSubmit: (String verificationCode) {
            onSubmit(verificationCode);
          }, // end onSubmit
        ),
        const SizedBox(height: 25),
        Column(
          children: [
            Text(controller.email.text),
            Text("not your email?".tr,
                textAlign: TextAlign.center,
                style: ThemeData()
                    .textTheme
                    .bodyText1!
                    .copyWith(
                      fontSize: 16,
                    )),
            TextButton(
                onPressed: () {
                  onBack();
                },
                child: Text(
                  "Change Email".tr,
                ))
          ],
        ),
      ],
    );
  }
}
