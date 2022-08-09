// ignore_for_file: unused_local_variable, depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashboard/core/constant/routs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController
    extends GetxController {
  signUp();
  goToSignIn();
  firebaseSignUp();
  addData();
  final user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firestore =
      FirebaseFirestore.instance;
}

class SignUpControllerImp
    extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController confirmPassword;
  late TextEditingController password;

  @override
  signUp() {
    //validation of the form
    if (username.text.isEmpty ||
        email.text.isEmpty ||
        password.text.isEmpty ||
        confirmPassword.text.isEmpty) {
      Get.snackbar(
        "Error".tr,
        "please fill all the fields".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else if (password.text.length <= 6) {
      Get.snackbar(
        "Error".tr,
        "Password must be at least 6 characters"
            .tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else if (password.text !=
        confirmPassword.text) {
      Get.snackbar(
        "Error".tr,
        "password does not match".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      firebaseSignUp();
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }

// form intialization
  @override
  void onInit() {
    username = TextEditingController();
    confirmPassword = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    confirmPassword.dispose();
    password.dispose();
    super.dispose();
  }

  //firebase sign up method
  @override
  firebaseSignUp() async {
    try {
      final credential = await FirebaseAuth
          .instance
          .createUserWithEmailAndPassword(
        email: email.text,
        password: confirmPassword.text,
      );
     await  addData();
       Get.toNamed(AppRoutes.emailVerify);
     
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar(
          "Error".tr,
          "Password is too weak".tr,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else if (e.code ==
          'email-already-in-use') {
        Get.snackbar(
          "Error".tr,
          "Email is already in use".tr,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          "Error".tr,
          e.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  @override
  addData() async {
    final user = FirebaseAuth.instance.currentUser;
     try{
    await firestore
        .collection('adminUsers')
        .doc(user!.uid)
        .set({
      'username': username.text,
      'email': email.text,
      'password': password.text,
    });
   
    } catch (e) {
     Get.snackbar('Erorr', e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white);
    }
  }
}
