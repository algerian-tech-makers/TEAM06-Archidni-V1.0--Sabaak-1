import 'package:dashboard/core/constant/color.dart';
import 'package:dashboard/core/constant/routs.dart';
import 'package:dashboard/view/widget/onbording/button.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class OnBording extends StatelessWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text('OnBording'.tr),
        centerTitle: true ,
      ),
      body: Row(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/onbordingfour.png',
              height: Get.height * .7,
              width: Get.width * .5,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text('مرحبا بك في أرشدني',
                    style: TextStyle(
                        fontSize:
                            Get.height * .05,
                        fontWeight:
                            FontWeight.w600)),
                Text(
                    "*تنويه هذه الصفحة مخصصة لأصحاب الجمعيات القرأنية فقط* ",
                    style: TextStyle(
                        fontSize:
                            Get.height * .020,
                        height: 2.5,
                        color: AppColor.secoundry,
                        fontWeight:
                            FontWeight.w500)),
            const    Text(
                    ' من خلال موقع أرشدني بإمكانك تقديم طلب من أجل إضافة جمعيتك القرأنية  في التبيق الخاص  بنا حيث سيسهل عملية التواصل بينك وبين الطلاب المحتملين من خلال توفير معلومات عن جمعيتك \n سارع بالتسجيل الآن و أجعل جمعيتك أكثر  إنتشارا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize:
                           19,
                        height: 2.5,
                        color: Colors.black,
                        fontWeight:
                            FontWeight.w200)),

                            SizedBox(
                              height: Get.height * .05,
                            ),

                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                
                                 AppCustomButtonOnbording(
                                  text:"signup".tr,
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.signup);
                                  },
                                  color: AppColor.primary,
                                  textColor: Colors.white,
                                 ),
                                 AppCustomButtonOnbording(
                                  text:   "signin".tr,
                                  onPressed: () {
                                   
                                    Get.toNamed(AppRoutes.login);
                                  },
                                  color: AppColor.light,
                                  textColor: Colors.black,
                                 ),
                               ],
                             ) ,

              ],
            ),
          )),
        ],
      ),
    );
  }
}
