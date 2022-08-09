import 'package:dashboard/view/widget/auth/form/resetpasswordform.dart';
import 'package:dashboard/view/widget/auth/text/signintext.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
  

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'forget_password'.tr,
            style: ThemeData()
                .textTheme
                .headline1!
                .copyWith(fontSize: 24),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Row(
          children: [
            Expanded(
              child:  Image.asset(
                  'assets/images/onbordingfour.png' ,
                  height: Get.height * .7,
                   width: Get.width * .5,
                 ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 120),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AppSiginInText(
                            titel:  "Reset Password".tr,
                            text:
                                'Enter your new password'.tr, 
                          ),
                          const SizedBox(height: 25),
                        const AppResetPassowrdForm(),
                           
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}