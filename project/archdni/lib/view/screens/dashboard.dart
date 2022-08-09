import 'package:archdni/controller/dashboard_conroller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard
    extends GetView<DashboardController> {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    DashboardControllerImp controller =
        Get.put(DashboardControllerImp());
    return GetBuilder<DashboardControllerImp>(
        builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            children: [
              widgetOptions.elementAt(
                  controller.currentPage),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: bottomBarItems,
            currentIndex: controller.currentPage,
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColor.primary,
            onTap: (int index) {
              controller.onItemTapped(index);
            }),
      );
    });
  }
}
 