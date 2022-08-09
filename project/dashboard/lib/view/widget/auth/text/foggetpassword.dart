import 'package:dashboard/core/constant/routs.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
 
class AppForgetPasswordText
    extends StatelessWidget {
  const AppForgetPasswordText({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              Get.toNamed(
                  AppRoutes.forgetPassword);
            },
            child: Text("Forgot Password?".tr,
                style: ThemeData()
                    .textTheme
                    .bodyText1!
                    .copyWith(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey,
                    ))),
      ],
    );
  }
}
