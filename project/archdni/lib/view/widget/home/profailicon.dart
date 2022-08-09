import 'package:archdni/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppProfaileIcon extends StatelessWidget {
  const AppProfaileIcon({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: 5, horizontal: 5),
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.all(
              Radius.circular(16)),
          image: DecorationImage(
            image: AssetImage(
                'assets/images/Avatar.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      onTap: () {
        Get.toNamed(AppRoutes.profile);
      },
    );
  }
}
