 import 'package:archdni/view/widget/home/stare.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class TestController
    extends GetxController {
  rating();
}

class TestControllerImp extends TestController {
    final int _rating = 4;

  @override
  rating() {
    List<Widget> star = [];
    for (int i = 0; i < 5; i++) {
      if (i < _rating) {
        star.add(
            const AppStar(color: Color(0xFFFDCC0D)));
      } else {
        star.add(
            const AppStar(color: Colors.grey));
      }
    }
    return star;
  }
}
