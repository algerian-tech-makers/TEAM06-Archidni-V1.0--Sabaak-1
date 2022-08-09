import 'package:archdni/core/constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSchoolImag extends StatelessWidget {
  final String image;
  const AppSchoolImag(
      {Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              CachedNetworkImageProvider(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.dark.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(-2, 3),
          ),
        ],
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)),
      ),
    );
  }
}
