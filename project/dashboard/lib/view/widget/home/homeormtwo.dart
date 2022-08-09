// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/controller/backend/homeform_controller.dart';
 import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/view/widget/auth/form/customformfield.dart';
 import 'package:dashboard/view/widget/home/imagepickertwo.dart';
import 'package:dashboard/view/widget/onbording/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomeFormTwo extends StatelessWidget {
  const AppHomeFormTwo({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeFormControllerImp controller =
        Get.put(HomeFormControllerImp());

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 120),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              "school_info".tr,
              style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500),
            ),
            AppCustomFormFaild(
              lable: "school_address".tr,
              hint: "enter_school_address".tr,
              icon:
                  Icons.add_location_alt_outlined,
              keyboardType: TextInputType.text,
              obscureText: false,
              controller: controller.address,
            ),
            AppCustomFormFaild(
              lable: "school_latitude".tr,
              hint: "enter_school_latitude".tr,
              icon: Icons.location_on_outlined,
              keyboardType: TextInputType.text,
              obscureText: false,
              controller: controller.latitude,
            ),
            AppCustomFormFaild(
              lable: "school_longitude".tr,
              hint: "enter_school_longitude".tr,
              icon: Icons.location_on_outlined,
              keyboardType: TextInputType.text,
              obscureText: false,
              controller: controller.longitude,
            ),
            AppCustomFormFaild(
              lable: "school_students_number".tr,
              hint: "enter_school_students_number"
                  .tr,
              icon: Icons.people_outline,
              keyboardType: TextInputType.phone,
              obscureText: false,
              controller: controller.studentCount,
            ),
            AppCustomFormFaild(
              lable: "school_gender_type".tr,
              hint: "enter_school_gender_type".tr,
              icon: Icons.person_outline,
              keyboardType:
                  TextInputType.emailAddress,
              obscureText: false,
              controller: controller.schoolgender,
            ),
            AppCustomFormFaild(
              lable: "school_price".tr,
              hint: "enter_school_price".tr,
              icon: Icons.attach_money_outlined,
              keyboardType: TextInputType.url,
              obscureText: false,
              controller: controller.schoolprice,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                children: [
                  const AppImagePickerTwo(),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "enter_image_from_school".tr,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end,
              children: [
                AppCustomButtonOnbording(
                    text: 'Submit'.tr,
                    onPressed: () async {
                      await controller
                          .secounValidation();
                    },
                    color: AppColor.primary,
                    textColor: Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}
