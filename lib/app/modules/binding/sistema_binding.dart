import 'package:accessctrl/app/modules/controller/sistema_controller.dart';
import 'package:get/get.dart';

class SistemaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SistemaController());
  }
}
