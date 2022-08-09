import 'package:get/get.dart';

abstract class DashboardController
    extends GetxController {
  onItemTapped(index);
}

class DashboardControllerImp
    extends DashboardController {
  late int currentPage = 0;
  


@override
   
  @override
  onItemTapped(index) {
    currentPage = index;

    update();
  }
}
