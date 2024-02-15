import 'package:get/get.dart';

import '../CONFIG/route_config.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  navigateToPage(int index) {
    if (index == 0) {
      Get.toNamed(Routes.home);
    } else if (index == 1) {
      Get.toNamed(Routes.button);
    } else if (index == 2) {
      Get.toNamed(Routes.container);
    }
  }
}
