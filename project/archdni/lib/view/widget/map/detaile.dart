import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:archdni/view/screens/school.dart';
import 'package:archdni/view/widget/school/schoolbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDetaillesMap extends StatelessWidget {
  final int ? index;
  const AppDetaillesMap(
      {Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller =
        Get.put(HomeControllerImp());

    List<SchoolModel> data = controller.wordList;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            data[index!].name!,
            style: const TextStyle(fontSize: 24),
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: AppColor.secoundry,
            ),
            title: Text(data[index!].location!),
          ),
          ListTile(
            leading: const Icon(
              Icons.phone,
              color: AppColor.secoundry,
            ),
            title: Text(data[index!].phone!),
          ),
          ListTile(
            leading: const Icon(
              Icons.email,
              color:AppColor.secoundry,
            ),
            title: Text(data[index!].email!),
          ),
          ListTile(
            leading: const Icon(
              Icons.star,
              color: AppColor.secoundry,
            ),
            title: Text(
                data[index!].rating!.toString()),
          ),
          ListTile(
            leading: const Icon(
              Icons.attach_money,
              color:AppColor.secoundry,
            ),
            title: Text(
                data[index!].price!.toString()),
          ),
          AppSchoolButton(
            onPressed: () {
              Get.to(
                () => School(
                  index: index!,
                  
                ),
                routeName: '/school',
                transition: Transition.downToUp,
                duration: const Duration(
                    milliseconds: 300),
              );
            },
            color: AppColor.primary,
            bgColor: Colors.white,
            child: Text(
              "Explore".tr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
