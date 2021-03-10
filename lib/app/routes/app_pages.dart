import 'package:accessctrl/app/modules/login/bindings/login_bindings.dart';
import 'package:accessctrl/app/modules/login/views/login.page.dart';
import 'package:accessctrl/app/modules/sistemas/bindings/sistema_edita_binding.dart';
import 'package:accessctrl/app/modules/sistemas/bindings/sistema_lista_binding.dart';
import 'package:accessctrl/app/modules/sistemas/views/sistema_edita_page.dart';
import 'package:accessctrl/app/modules/sistemas/views/sistema_lista_page.dart';
import 'package:accessctrl/app/modules/splash/bindings/splash_binding.dart';
import 'package:accessctrl/app/modules/splash/views/splash_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:accessctrl/app/modules/home/bindings/home_binding.dart';
import 'package:accessctrl/app/modules/home/views/home_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.SISTEMASLIST,
      page: () => SistemaLista(),
      binding: SistemaListaBinding(),
    ),
    GetPage(
      name: Routes.SISTEMASEDIT,
      page: () => SistemaEditaPage(),
      binding: SistemaEditaBinding(),
    ),

    // GetPage(
    //   name: Routes.RESETPSW,
    //   page: () => ResetPswPage(),
    //   binding: ResetPswBinding(),
    // ),
    // GetPage(
    //   name: Routes.SIGNUP,
    //   page: () => SignUpPage(),
    //   binding: SignUpBinding(),
    // ),
    // GetPage(
    //   name: Routes.USUARIOSLIST,
    //   page: () => UsuarioList(),
    //   binding: UsuarioListBinding(),
    // ),
    // GetPage(
    //   name: Routes.USUARIOSEDIT,
    //   page: () => UsuarioEditPage(),
    //   binding: UsuarioEditBinding(),
    // ),
  ];
}
