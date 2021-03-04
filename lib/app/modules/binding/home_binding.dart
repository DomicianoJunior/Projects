import 'package:get/get.dart';
import 'package:accessctrl/app/modules/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
