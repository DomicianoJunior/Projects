import 'package:accessctrl/app/modules/sistemas/controllers/sistema_edita_controller.dart';
import 'package:get/get.dart';

class SistemaEditaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SistemaEditaController());
  }
}
