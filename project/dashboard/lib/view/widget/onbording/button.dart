 
import 'package:dashboard/core/constant/color.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class AppCustomButtonOnbording
    extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color color;
  final Color textColor;
  const AppCustomButtonOnbording(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:  onPressed,
      elevation: 5,
      textColor: textColor,
      child: Container(
        width: Get.width * .1,
        height: Get.height * .075,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
                color: AppColor.primary),
            borderRadius:
                BorderRadius.circular(10),
            color: color),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: Get.height * .025,
                height: 2.5,
                color: textColor,
                fontWeight: FontWeight.w200)),
      ),
    );
  }
}
