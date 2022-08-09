 // ignore_for_file: depend_on_referenced_packages

 import 'package:dashboard/controller/otpchangepassword_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/form/otpform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OtpPasswordConrollerImp otpcontroller =
        Get.put(OtpPasswordConrollerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Code'.tr,
          style: ThemeData() 
              .textTheme
              .headline1!
              .copyWith(fontSize: 24 , color: Colors.white),
        ),
        backgroundColor: AppColor.primary,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 30, vertical: 0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Expanded(
                  child: Image.asset(
                    'assets/images/onbordingfour.png',
                    height: Get.height * .7,
                    width: Get.width * .5,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 120),
                  child: Column(
                    children: [
                      Text(
                        'verification_code_has_been_sent_to_your_email_please_check_your_email_and_enter_the_code'
                            .tr,
                        textAlign:
                            TextAlign.center,
                        style: const TextStyle(
                            fontFamily:
                                AppFont.primary),
                      ),
                      const SizedBox(height: 120),
                      AppOtpForm(
                        onBack: () {
                          otpcontroller.goToemail();
                        },
                        onSubmit:
                            (verificationCode) =>
                                {
                          otpcontroller.check(
                              verificationCode)
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
