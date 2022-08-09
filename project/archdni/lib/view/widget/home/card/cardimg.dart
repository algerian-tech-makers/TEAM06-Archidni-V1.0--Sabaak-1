import 'package:archdni/core/constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppCardImg extends StatelessWidget {
  final String image;
  const AppCardImg(
      {Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.22,
      width: Get.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color:
                AppColor.primary.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
        image: DecorationImage(
          image: CachedNetworkImageProvider(
              image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
