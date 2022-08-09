// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/controller/backend/homeform_controller.dart';
 import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/core/constant/routs.dart';
import 'package:dashboard/view/widget/auth/form/customformfield.dart';
import 'package:dashboard/view/widget/home/imagepicker.dart';
import 'package:dashboard/view/widget/onbording/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomeForm extends StatelessWidget {
  const AppHomeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeFormControllerImp controller =
        Get.put(HomeFormControllerImp());
    
    return Padding(
      padding: const EdgeInsets.only(top: 40 , left: 120 , right: 120),
      child: Column(
        children: [
          Text(
            "school_info".tr,
            style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500),
          ),
          AppCustomFormFaild(
            lable: "school_name".tr,
            hint: "enter_school_name".tr,
            icon: Icons.school_outlined,
            keyboardType: TextInputType.text,
            obscureText: false,
            controller: controller.schoolName,
          ),
          AppCustomFormFaild(
            lable: "school_description".tr,
            hint: "enter_school_description".tr,
            icon: Icons.home_outlined,
            keyboardType: TextInputType.text,
            obscureText: false,
            controller:
                controller.schoolDescription,
          ),
          AppCustomFormFaild(
            lable: "school_phone".tr,
            hint: "enter_school_phone".tr,
            icon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            obscureText: false,
            controller: controller.schoolPhone,
          ),
          AppCustomFormFaild(
            lable: "school_email".tr,
            hint: "enter_school_email".tr,
            icon: Icons.email_outlined,
            keyboardType:
                TextInputType.emailAddress,
            obscureText: false,
            controller: controller.schoolEmail,
          ),
          AppCustomFormFaild(
            lable: "school_city".tr,
            hint: "enter_school_city".tr,
            icon: Icons.location_city_outlined,
            keyboardType: TextInputType.url,
            obscureText: false,
            controller: controller.schoolCity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.start,
              children: [
                const AppImagePicker(),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "select_school_logo".tr,
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
                        .validtion();
                        Get.offNamed(AppRoutes.homeFormTwo);
                  },
                  color: AppColor.primary,
                  textColor: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}
