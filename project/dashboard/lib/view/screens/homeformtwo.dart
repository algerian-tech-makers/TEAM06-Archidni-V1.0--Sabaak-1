// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/core/constant/routs.dart';
import 'package:dashboard/view/widget/home/homeormtwo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
 import 'package:flutter/material.dart';

class HomeFormTwo extends StatelessWidget {
  const HomeFormTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( actions: [
          //logout button
          IconButton(
            
            icon: const Icon(Icons.exit_to_app),
            onPressed: () async{
              
           await FirebaseAuth.instance.signOut();
            Get.toNamed(AppRoutes.signup);
              
         
   
           
            },
          ),
        ],
        backgroundColor: AppColor.primary,
        title: Text('Home'.tr),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Row(
        children: [
          const Expanded(child: AppHomeFormTwo()),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 100),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/home.png',
                  height: Get.height * .45,
                  width: Get.width / .25,
                ),
                Text(
                  "one_more_step".tr,
                  style: const TextStyle(
                      fontSize: 24),
                ),
                Text(
                  "more_info_about_your_school_that_will_help_the_student_to_find_your_school"
                      .tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
