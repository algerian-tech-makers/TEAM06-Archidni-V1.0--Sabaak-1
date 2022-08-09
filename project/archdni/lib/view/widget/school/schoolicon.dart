import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class AppSchoolIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final String data;
  const AppSchoolIcon(
      {Key? key,
      required this.icon,
      required this.text,
      required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color.fromARGB(
              255, 15, 155, 2),
          size: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 5, right: 3),
          child: Text(
            // ignore: unnecessary_brace_in_string_interps
            "${text.tr} ${data}",
            style: TextStyle(
              fontSize: Get.height * 0.023,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
