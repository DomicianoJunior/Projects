import 'package:get/get.dart';
import 'package:accessctrl/app/routes/app_routes.dart';

class SplashController extends GetxController {
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Get.offNamed(AppRoutes.LOGIN);
      },
    );
  }
}
