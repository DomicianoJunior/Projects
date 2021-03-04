import 'package:get/get.dart';
import 'package:accessctrl/app/modules/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
