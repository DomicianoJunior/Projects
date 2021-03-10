import 'package:accessctrl/app/modules/sistemas/controllers/sistema_lista_controller.dart';
import 'package:get/get.dart';

class SistemaListaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SistemaListaController());
  }
}
