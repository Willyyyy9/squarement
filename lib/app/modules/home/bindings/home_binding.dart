import 'package:get/get.dart';
import 'package:squarement/app/modules/bottom-bar/controllers/bottom_bar_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<BottomBarController>(() => BottomBarController(), fenix: true);
  }
}
