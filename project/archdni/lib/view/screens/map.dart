import 'package:archdni/core/constant/color.dart';
import 'package:archdni/view/widget/map/mapform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapPage extends StatelessWidget {
  final double? latitude;
  final double? longitude;
  const MapPage(
      {Key? key,
      required this.latitude,
      required this.longitude})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

           appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Get.back();
              },
            ),
            title: Text(
              'explore_nearby'.tr,
              style: const TextStyle(
                  color: Colors.black),
                  
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation
                  .endFloat,
                  
          floatingActionButton:
              FloatingActionButton(
                backgroundColor: AppColor.primary,
            onPressed: () {},
            child: const Icon(
                Icons.my_location_outlined),
          ),
          body: AppMap(
            latitude: latitude!,
            longitude: longitude!,
          )),
    );
  }
}
