import 'package:archdni/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSchoolButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final Color color;
   final Color bgColor;
  const AppSchoolButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.color,
     required this.bgColor,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Container(
          height: 50,
          width: Get.width * 0.41,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(10),
            border: Border.all(
                color: AppColor.primary,
                width: 1),
            boxShadow: [
              BoxShadow(
                color: bgColor,
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: child,
          ),
        ));
  }
}
