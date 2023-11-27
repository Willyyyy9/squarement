import 'package:get/get.dart';

class BottomBarController extends GetxController {
  int bottomBarSelectedIndex = 0;

  navigateToPage(int index) {
    bottomBarSelectedIndex = index;

    update();
  }
}
