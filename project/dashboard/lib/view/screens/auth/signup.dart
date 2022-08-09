// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/controller/auth/signup_controller.dart';
import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/form/signupform.dart';
import 'package:dashboard/view/widget/auth/text/haveacount.dart';
import 'package:dashboard/view/widget/auth/text/signintext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
 
class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SignUpControllerImp controller =
        Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'signup'.tr,
            style: ThemeData()
                .textTheme
                .headline1!
                .copyWith(fontSize: 24 , color: Colors.white),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          backgroundColor: AppColor.primary,
          elevation: 0,
          centerTitle: true,
        ),
        body: Row(
          children: [
            Expanded(child: Image.asset('assets/images/onbording.png')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppSiginInText(
                        titel:
                            "complete_your_profile".tr,
                        text:
                            "complete_your_profile_and_get_your_first_order"
                                .tr,
                      ),
                      const AppSignUpForm(),
                      AppHaveAcountText(
                        text1:
                            "you_already_have_an_account"
                                .tr,
                        text2: "signin".tr,
                        onTap: () {
                         controller.goToSignIn();
                        
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
