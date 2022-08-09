import 'package:archdni/controller/onbording_controller.dart';
import 'package:archdni/view/widget/onbording/custom_button.dart';
import 'package:archdni/view/widget/onbording/dote_sroling.dart';
import 'package:archdni/view/widget/onbording/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
 class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [
          OnBordingSlider(),
          DoteSrolingOnbording(),
          CustomButtonOnbording(),
        ],
      )),
    );
  }
}
