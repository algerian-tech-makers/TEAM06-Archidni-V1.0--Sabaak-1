 import 'package:archdni/core/constant/routs.dart';
import 'package:archdni/view/widget/language/changelocal.dart';
import 'package:archdni/view/widget/language/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    
 
    return Scaffold(
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text("lantitel".tr,
                    style: Theme.of(context)
                        .textTheme
                        .headline1),
                const SizedBox(
                  height: 20,
                ),
                AppCustomButtonLang(
                  textbutton: "AR",
                  onPressed: (() {
                    controller.changeLang("ar");
                    Get.offNamed(AppRoutes.onbording);
                  }),
                ),
                AppCustomButtonLang(
                  textbutton: "EN",
                  onPressed: (() {
                    controller.changeLang("en");
                    Get.offNamed(AppRoutes.onbording);
                  }),
                ),
              ],
            )),
      ),
    );
  }
}
