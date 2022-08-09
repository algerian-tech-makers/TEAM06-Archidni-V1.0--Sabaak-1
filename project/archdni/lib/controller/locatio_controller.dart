// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'dart:async';

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

abstract class LocationController
    extends GetxController {
  double ? latitude ;
  double ?longitude  ;
  late StreamSubscription<Position>
      positionStream;
  getlocation();
}

class LocationControllerImp
    extends LocationController {
  @override
  void onInit() {
    super.onInit();
    getlocation();
  }

  @override
  void getlocation() async {
    bool servicesEnabled;
    LocationPermission permission;
    servicesEnabled = await Geolocator
        .isLocationServiceEnabled();
    if (!servicesEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error(
          'Location services are not enabled');
    }
    permission =
        await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      Get.snackbar('Location Services',
          'Please enable location services and restart the app.',
          snackPosition: SnackPosition.BOTTOM);

      if (permission ==
          LocationPermission.denied) {
        permission =
            await Geolocator.requestPermission();
        if (permission ==
            LocationPermission.denied) {
          return Future.error(
              'Location permission are denied');
        }
      }
    }

    positionStream =
        Geolocator.getPositionStream().listen(
            (Position position) {
      latitude  =
          position.latitude ;
      longitude  =
          position.longitude ;
    }, onError: (error) {
      return Future.error(error);
    });
  }
}
