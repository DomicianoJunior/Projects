import 'package:accessctrl/app/modules/controller/sistema_edita_controller.dart';
import 'package:get/get.dart';

class SistemaEditaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SistemaEditaController());
  }
}
