import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/view/widget/map/detaile.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:sliding_up_panel/sliding_up_panel.dart';

class AppMapCartInfo
    extends GetView<HomeControllerImp> {
  final int index;
  const AppMapCartInfo({ Key? key ,required this.index,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return SlidingUpPanel(
         
         backdropTapClosesPanel: false,
       
        panel:   Center(
          child: AppDetaillesMap(index: index),
               
                
              
        ),
     
        collapsed: Container(
          color: AppColor.primary,
          child:   Center(
            child: Text(
             controller.wordList[index].name!,
              style:
            const      TextStyle(color: Colors.white , fontSize: 24),
            ),
          ),
        ),
      )
     ;
  }
}
