import 'package:archdni/data/models/schoolmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

abstract class HomeController
    extends GetxController {
  var isLoading = true;
  var wordList = <SchoolModel>[];
  getData();
}

class HomeControllerImp extends HomeController {
  @override
  Future<void> getData() async {
    try {
      QuerySnapshot words =
          await FirebaseFirestore.instance
              .collection('schools')
              .get();
      wordList.clear();
      for (var i in words.docs) {
        wordList.add(SchoolModel(
          name: i['name'],
          location: i['address'],
          description: i['description'],
          imageUrl: i['image'],
          phone: i['phone'],
          price: i['price'],
          rating: i['rating'] ,
          students: i['students'],
          city: i['city'],
          gender: i['gender'],
          latitude: i["latitude"],
          longitude: i["longitude"],
          email: i["email"],
          logo: i["logo"],
          
        ));
      }
      isLoading = false;
    } catch (e) {
      Get.snackbar('Error', e.toString());
      
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
