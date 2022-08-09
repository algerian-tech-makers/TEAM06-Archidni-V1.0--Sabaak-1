import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/view/widget/home/listeofschool.dart';
import 'package:archdni/view/widget/home/profailicon.dart';
import 'package:archdni/view/widget/home/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 3, vertical: 5),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const AppProfaileIcon(),
            actions: [
              IconButton(
                icon: const Icon(
                  Ionicons.reorder_three_outline,
                  size: 30,
                  color: AppColor.primary,
                ),
                onPressed: () {},
              ),
            ]),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.02,
              vertical: Get.height * 0.005),
          child: Column(
            children: [
              const AppHomaText(),
              SizedBox(
                height: Get.height * 0.05,
              ),
            
               const Expanded(
                  child: AppListSchool())
             
            ],
          ),
        ),
      ),
    );
  }
}
