import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppStar extends StatelessWidget {
  final Color color;
  const AppStar({Key? key, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         
        SizedBox(
          width: Get.width * 0.01,
        ),
        Icon(
          Ionicons.star_outline,
          color: color,
          size: 18,
        ),
      ],
    );
  }
}
