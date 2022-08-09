// ignore_for_file: unused_local_variable, unused_import

import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:archdni/view/screens/map.dart';
import 'package:archdni/view/widget/home/card/cardimage.dart';
import 'package:archdni/view/widget/home/card/detailtext.dart';
import 'package:archdni/view/widget/home/profailicon.dart';
import 'package:archdni/view/widget/school/schoolbody.dart';
import 'package:archdni/view/widget/school/schoolbutton.dart';
import 'package:archdni/view/widget/school/schoolimg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class School extends StatelessWidget {
  final int index;

  const School({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller =
        Get.put(HomeControllerImp());
    late List<SchoolModel> school =
        controller.wordList;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: AppCardAvatarImage(
                logo: school[index].logo!),
          ),
          title: Text(
            school[index].name!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                color:
                    Colors.grey.withOpacity(0.25),
                borderRadius:
                    BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(5),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                      Ionicons.chevron_back,
                      color: Colors.black)),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              AppSchoolImag(
                  image: school[index].imageUrl!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppCardDeetailleText(
                           
                          price: school[index].price!,
                          rating: school[index].rating!.toString(),
                          student: school[index].students!,
                          ),
                    ],
                  ),
                   SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                     child: AppSchoolBody(
                      location:
                          school[index].location!,
                      description: school[index]
                          .description!,
                      ),
                   ),
               Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              AppSchoolButton(
                  color: Colors.transparent,
                  bgColor: Colors.transparent,
                  child: Text(
                    "Location".tr,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Get.to(
                      () => MapPage(
                        latitude: school[index]
                            .latitude!,
                        longitude: school[index]
                            .longitude!,
                      ),
                      routeName: '/AppMap',
                      transition:
                          Transition.downToUp,
                      duration: const Duration(
                          milliseconds: 300),
                    );
                  }),
              AppSchoolButton(
                  color: AppColor.primary,
                  bgColor: Colors.grey,
                  child: Text(
                    "connect with us".tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {}),
            ],
          ),
            ]),
      ),
    );
  }
}
 