import 'package:archdni/controller/search_conroller.dart';
import 'package:archdni/core/constant/color.dart';
 import 'package:archdni/view/screens/school.dart';
import 'package:archdni/view/widget/home/card/cardbutton.dart';
import 'package:archdni/view/widget/home/card/cardimage.dart';
import 'package:archdni/view/widget/home/card/cardimg.dart';
import 'package:archdni/view/widget/home/card/cradtitel.dart';
import 'package:archdni/view/widget/home/card/detailtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppCard
    extends GetView<SearchControllerImp> {
  final int? index;
  final String? name;
  final String? image;
  final String? city;
  final double? rating;
  final String? price;
  final double? latitude;
  final double? longitude;
  final int? student;
  final String? logo;
  final void Function()? onTap;
  const AppCard(
      {this.latitude,
      this.logo,
      this.longitude,
      this.student,
      this.index,
      this.name,
      this.image,
      this.city,
      this.rating,
      this.price,
      this.onTap,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * 0.41,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color:
                  AppColor.dark.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0.5,
                  1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.height * 0.009,
                vertical: Get.height * 0.013),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    Row(
                      children: [
                        AppCardAvatarImage(
                            logo: logo!),
                        AppCardTitel(
                            name: name!,
                            city: city!),
                      ],
                    ),
                    //favorite button
                    InkWell(
                        child: const Icon(
                            Ionicons
                                .heart_outline,
                            size: 30,
                            color: Color.fromARGB(
                                255, 84, 84, 84)),
                        onTap: () {}),
                    //end of favorite button
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                AppCardImg(image: image!),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    AppCardDeetailleText(
                        rating:
                            rating!.toString(),
                        price: price!,
                        student: student!),
                    AppButtonCard(
                      onPressed: () {
                        Get.to(
                          School(
                            index: index!,
                          ),
                          transition:
                              Transition.downToUp,
                          duration:
                              const Duration(
                                  milliseconds:
                                      500),
                        );
                      },
                    ),
                  ],
                ),
              ],
            )));
  }
}
