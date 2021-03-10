import 'package:accessctrl/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Get.offNamed(Routes.LOGIN);
      },
    );
  }
}
