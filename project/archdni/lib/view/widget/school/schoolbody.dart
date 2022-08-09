// ignore_for_file: unnecessary_brace_in_string_interps

 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class AppSchoolBody extends StatelessWidget {
  final String location;
  final String description;
  const AppSchoolBody({
    Key? key,
    required this.location,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      scrollDirection: Axis.vertical,
      child: Column(
        children: [
           
            
              Text( location ,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,)),
            
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            "$description  ",
            overflow: TextOverflow.fade,
             
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
        ],
      ),
    );
  }
}
