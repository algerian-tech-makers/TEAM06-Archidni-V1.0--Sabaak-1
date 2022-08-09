import 'package:archdni/controller/locatio_controller.dart';
import 'package:archdni/core/constant/imageassets.dart';
import 'package:archdni/data/models/onbordingmodel.dart';
import 'package:archdni/view/screens/home.dart';
import 'package:archdni/view/screens/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';


List<OnbordingModel> onBordingList = [
  OnbordingModel(
      title: 'titleone'.tr,
      description: 'descriptionone'.tr,
      imageUrl: AppImageUrl.onbordingone),
  OnbordingModel(
      title: 'titletwo'.tr,
      description: 'descriptiontwo'.tr,
      imageUrl: AppImageUrl.onbordingtwo),
  OnbordingModel(
      title: 'titlethree'.tr,
      description: 'descriptionthree'.tr,
      imageUrl: AppImageUrl.onbordingthree),
  OnbordingModel(
      title: 'titlefour'.tr,
      description: 'descriptionfour'.tr,
      imageUrl: AppImageUrl.onbordingfour),
];

LocationControllerImp locationcontroller =
    Get.put(LocationControllerImp());
List<BottomNavigationBarItem> bottomBarItems = [
  BottomNavigationBarItem(
    icon: const Icon(Ionicons.home_outline),
    label: 'Home'.tr,
  ),
  BottomNavigationBarItem(
    icon: const Icon(Ionicons.map_outline ),
    label: 'Map'.tr,
  ),
  BottomNavigationBarItem(
    icon: const Icon(Ionicons.heart_outline),
    label: 'Favorites'.tr,
  ),
  BottomNavigationBarItem(
    icon: const Icon(Ionicons.person_outline),
    label: 'me'.tr,
  ),
];

List<Widget> widgetOptions = <Widget>[
  const Home(),
  MapPage(
      latitude: locationcontroller.latitude,
      longitude: locationcontroller.longitude),
  const Text(
    'Index 2: Business',
  ),
  const Text(
    'Index 3: Settings',
  ),
];
