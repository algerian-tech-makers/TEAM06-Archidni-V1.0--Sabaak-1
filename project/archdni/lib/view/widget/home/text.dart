import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomaText extends StatelessWidget {
  const AppHomaText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${"Hello".tr} محمد",
          softWrap: true,
           
          style: ThemeData()
              .textTheme
              .bodyText1!
              .copyWith(
                fontSize: Get.height * 0.04,
                fontWeight: FontWeight.w400,
              ),
        ),
        Text(
          "Welcome to Archdni , browse and discover the best Quran school."
              .tr,
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.fade,
          style: ThemeData()
              .textTheme
              .bodyText1!
              .copyWith(
                  fontSize: Get.height * 0.020,
                  height: 1.7,
                  color: Colors.grey),
        )
      ],
    );
  }
}
