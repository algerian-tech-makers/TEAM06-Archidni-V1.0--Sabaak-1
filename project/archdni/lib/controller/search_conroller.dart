import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

abstract class SearchController
    extends GetxController {
  getData();
}

class SearchControllerImp
    extends SearchController {
  CollectionReference schools = FirebaseFirestore
      .instance
      .collection('schools');
  late List data = [];
  @override
  void onInit() {
   getData();  
    super.onInit();
  }
        
  @override
  getData() async {
      data.clear(); 
    await  schools.get().then((value) {
      for (var element in value.docs) {
        data.addIf(!   (data.contains(element.data())) , element.data());
      }
    });
     
    update();
   }
}
