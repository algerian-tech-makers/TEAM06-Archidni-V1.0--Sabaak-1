import 'package:archdni/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButtonCard extends StatelessWidget {
  final void Function() onPressed;
  const AppButtonCard({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(left: 8, right: 8),
        onPressed: onPressed,
        child: Container(
          height: 47,
          width: 100,
           margin:const EdgeInsets.only(
            top: 9,
            
            ),
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius:
              const  BorderRadius.only(
                  topRight: Radius.circular(15),
                   
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                ),
             
            boxShadow: [
              BoxShadow(
                color: AppColor.primary
                    .withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child:  Padding(
            padding:const EdgeInsets.all(12.0),
            child: Text(
              'Explore'.tr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: AppColor.light,
              ),
            ),
          ),
        ));
  }
}
