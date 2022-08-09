// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashboard/controller/home/pickimage_controller.dart';
import 'package:dashboard/controller/home/pickimagetwo_controller.dart';
import 'package:dashboard/core/constant/routs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_storage/firebase_storage.dart';

abstract class HomeFormController
    extends GetxController {
  File? image;

  CollectionReference product = FirebaseFirestore
      .instance
      .collection('product');
  File? file;
  Reference? ref;
  final user = FirebaseAuth.instance.currentUser;
  ImagePickerControllerImp
      imagePickerControllerImp =
      Get.put(ImagePickerControllerImp());
  FirebaseFirestore firestore =
      FirebaseFirestore.instance;
  ImagePickerTwoControllerImp
      imagePickerTwoControllerImp =
      Get.put(ImagePickerTwoControllerImp());
  validtion();
  secounValidation();
  addData();
  uploadImg();
}

class HomeFormControllerImp
    extends HomeFormController {
  late TextEditingController schoolName;
  late TextEditingController schoolPhone;
  late TextEditingController schoolEmail;
  late TextEditingController schoolCity;
  late TextEditingController schoolDescription;
  late TextEditingController address  ;
  late TextEditingController latitude;
  late TextEditingController longitude;
  late TextEditingController studentCount;
  late TextEditingController schoolgender;
  late TextEditingController schoolprice;

  @override
  void onInit() {
    schoolName = TextEditingController();
    schoolPhone = TextEditingController();
    schoolEmail = TextEditingController();
    schoolCity = TextEditingController();
    schoolDescription = TextEditingController();
    address = TextEditingController();
    latitude = TextEditingController() ;
    longitude = TextEditingController();
    studentCount = TextEditingController();
    schoolgender = TextEditingController();
    schoolprice = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    schoolName.dispose();
    schoolPhone.dispose();
    schoolEmail.dispose();
    schoolCity.dispose();
    schoolDescription.dispose();
    address.dispose();
    latitude.dispose();
    longitude.dispose();
    studentCount.dispose();
    schoolgender.dispose();
    schoolprice.dispose();

    super.dispose();
  }

  @override
  validtion() {
    if (schoolName.text.isEmpty ||
        schoolPhone.text.isEmpty ||
        schoolEmail.text.isEmpty ||
        schoolCity.text.isEmpty ||
        schoolDescription.text.isEmpty ||
        imagePickerControllerImp.selectedFile ==
            null) {
      Get.snackbar(
        "Error".tr,
        "please fill all the fields".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      Get.offNamed(AppRoutes.homeFormTwo);
    }
  }

  @override
  addData() async {
    await uploadImg();
    double lat = double.parse(latitude.text);
    double long = double.parse(longitude.text);
    double student = double.parse(studentCount.text);
    double rating = 0.0;
    try {
      await firestore
          .collection('schools')
          .doc(user!.uid)
          .set({
        'name': schoolName.text,
        'phone': schoolPhone.text,
        'email': schoolEmail.text,
        'city': schoolCity.text,
        'description': schoolDescription.text,
        "logo": imagePickerControllerImp.url!,
        'address': address.text,
        'latitude': lat ,
        'longitude': long ,
        'students': student,
        'gender': schoolgender.text,
        'price': schoolprice.text,
        'image': imagePickerTwoControllerImp.url!,
        'rating': rating,
      });

      Get.offNamed(AppRoutes.signupdone);
    } catch (e) {
      Get.snackbar('title', e.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  @override
  uploadImg() async {
    try {
      final ref = FirebaseStorage.instance
          .ref()
          .child('${user!.uid}/logo.jpg');
      final uploadTask = await ref.putData(
          imagePickerControllerImp.bytesData!);
      imagePickerControllerImp.url =
          await uploadTask.ref.getDownloadURL();
    } catch (e) {
      Get.snackbar("Erorr".tr, e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
    try {
      final ref = FirebaseStorage.instance
          .ref()
          .child('${user!.uid}/image.jpg');
      final uploadTask = await ref.putData(
          imagePickerTwoControllerImp
              .bytesDataTwo!);
      imagePickerTwoControllerImp.url =
          await uploadTask.ref.getDownloadURL();
    } catch (e) {
      Get.snackbar("Erorr".tr, e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  @override
  secounValidation() {
    if (studentCount.text.isEmpty ||
        schoolgender.text.isEmpty ||
        schoolprice.text.isEmpty ||
        latitude.text.isEmpty ||
        longitude.text.isEmpty ||
        address.text.isEmpty ||
        imagePickerTwoControllerImp
                .selectedFile ==
            null) {
      Get.snackbar(
        "Error".tr,
        "please fill all the fields".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else if (!latitude.text.isNum ||
        !longitude.text.isNum 
       ) {
      Get.snackbar(
        "Error".tr,
        "latitude and longitude must be number"
            .tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
     
    } else if (!studentCount.text.isNum) {
      Get.snackbar(
        "Error".tr,
        "student count must be number"
            .tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }  
     else {
      addData();
    }
  }
}
