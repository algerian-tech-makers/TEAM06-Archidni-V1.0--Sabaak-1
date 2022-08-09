 import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/form/forgetpasswordform.dart';
import 'package:dashboard/view/widget/auth/text/signintext.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
 
 
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return  Scaffold(
        appBar: AppBar(
          title: Text(
            "forget_password".tr,
            style: ThemeData()
                .textTheme
                .headline1!
                .copyWith(fontSize: 24 ,color: Colors.white),
          ),
          backgroundColor: AppColor.primary,
          elevation: 0,
          centerTitle: true,
        ),
        body: Row(
          children: [

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130  ),
                    child: Column(
                      children: [
                        AppSiginInText(
                          titel: "send_reset_code".tr,
                          text:
                              'enter_your_email_to_recieve_reset_code'.tr,
                        ),
                         
                       const AppForgetPasswordForm(),
                         
                       
                          
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(child: 
            Image.asset(
                 'assets/images/onbordingfour.png' ,
                 height: Get.height * .7,
                  width: Get.width * .5,
                ),)
          ],
        ));
  }
}