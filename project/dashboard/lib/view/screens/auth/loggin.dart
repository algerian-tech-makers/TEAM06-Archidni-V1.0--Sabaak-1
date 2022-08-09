import 'package:dashboard/controller/auth/login_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/form/loginform.dart';
import 'package:dashboard/view/widget/auth/text/haveacount.dart';
import 'package:dashboard/view/widget/auth/text/signintext.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =
        Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'signin'.tr,
            
            style: ThemeData()
                .textTheme
                .headline1!
                .copyWith(fontSize: 24 , color: Colors.white),
          ),
          backgroundColor: AppColor.primary,
          elevation: 0,
          centerTitle: true,
        ),
        body: Row(
          children: [
           
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppSiginInText(
                        titel: "welcome_back".tr,
                        text:
                            "signin_with_email_and_password"
                                .tr,
                      ),
                      const SizedBox(height: 25),
                      const AppLoginForm(),
                      const SizedBox(height: 50),
                      AppHaveAcountText(
                        text1:
                            "you_dont_have_an_account"
                                .tr,
                        text2: "signup".tr,
                        onTap: () {
                          controller.goToSignUp();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ), Expanded(
              child: Center(
                child: Image.asset(
                  "assets/images/onbordingfour.png",
                  height: Get.height * .7,
                  width: Get.width * .5,
                ),
              ),
            ),
          ],
        ));
  }
}
