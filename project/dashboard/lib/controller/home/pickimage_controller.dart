// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:convert';

abstract class ImagePickerController
    extends GetxController {
  List<int>? selectedFile;
  final storageRef =
      FirebaseStorage.instance.ref();
  late String? url;
  Uint8List? bytesData;

  startWebFilePicker();
  upload();
}

class ImagePickerControllerImp
    extends ImagePickerController {
  @override
  startWebFilePicker() async {
    html.FileUploadInputElement uploadInput =
        html.FileUploadInputElement();
    uploadInput.multiple = true;
    uploadInput.draggable = true;
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final files = uploadInput.files;
      final file = files![0];
      final reader = html.FileReader();

      reader.onLoadEnd.listen((event) {
        bytesData = Base64Decoder().convert(reader
            .result
            .toString()
            .split(",")
            .last);
        selectedFile = bytesData;
        update();
      });
      reader.readAsDataUrl(file);
    });
  }

  @override
  upload() async {
    final user =
        FirebaseAuth.instance.currentUser;

    try {
      final ref = FirebaseStorage.instance
          .ref()
          .child('${user!.uid}/logo.jpg');
      final uploadTask =
          await ref.putData(bytesData!);
      url = await uploadTask.ref.getDownloadURL();
    } catch (e) {
      Get.snackbar("Erorr".tr, e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}
