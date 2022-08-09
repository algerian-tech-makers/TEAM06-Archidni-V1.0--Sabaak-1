// ignore_for_file: depend_on_referenced_packages

 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class AuthStateConroller
    extends GetxController {
      late bool isuserloggedin = false;
  checkcureentuser();
}

class AuthStateConrollerImp
    extends AuthStateConroller {
      @override
  void onInit() {
    checkcureentuser();
    super.onInit();
  }
  @override
  checkcureentuser()  {
     FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        
        isuserloggedin = false;
      } else {
      
        isuserloggedin = true;
      }
      update();
    });
  }
}
