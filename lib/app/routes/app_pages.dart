import 'package:accessctrl/app/modules/binding/sistema_edita_binding.dart';
import 'package:accessctrl/app/modules/binding/sistema_lista_binding.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:accessctrl/app/routes/app_routes.dart';

import 'package:accessctrl/app/modules/binding/splash_binding.dart';
import 'package:accessctrl/app/modules/view/splash_page.dart';

import 'package:accessctrl/app/modules/binding/login_bindings.dart';
import 'package:accessctrl/app/modules/view/login.page.dart';

import 'package:accessctrl/app/modules/binding/home_binding.dart';
import 'package:accessctrl/app/modules/view/home_page.dart';

import 'package:accessctrl/app/modules/view/sistema_edita_page.dart';
import 'package:accessctrl/app/modules/view/sistema_lista_page.dart';

/*
import 'package:sca/app/modules/binding/reset_psw_binding.dart';
import 'package:sca/app/modules/binding/signUp_binding.dart';
import 'package:sca/app/modules/binding/splash_binding.dart';
import 'package:sca/app/modules/binding/usuario_edit_binding.dart';
import 'package:sca/app/modules/binding/usuario_list_binding.dart';
import 'package:sca/app/modules/binding/home_binding.dart';
import 'package:sca/app/modules/view/home_page.dart';
import 'package:sca/app/modules/view/login.page.dart';
import 'package:sca/app/modules/binding/login_bindings.dart';
import 'package:sca/app/modules/view/reset_psw_page.dart';
import 'package:sca/app/modules/view/signup_page.dart';
import 'package:sca/app/modules/view/splash_page.dart';
import 'package:sca/app/modules/view/usuario_edit_page.dart';
import 'package:sca/app/modules/view/usuario_list_page.dart';
import 'package:sca/app/routes/app_routes.dart';
*/
class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.SISTEMAS,
    //   page: () => SistemaListaPage(),
    //   binding: SistemaBinding(),
    // ),
    GetPage(
      name: AppRoutes.SISTEMASLIST,
      page: () => SistemaLista(),
      binding: SistemaListaBinding(),
    ),
    GetPage(
      name: AppRoutes.SISTEMASEDIT,
      page: () => SistemaEditaPage(),
      binding: SistemaEditaBinding(),
    ),

    // GetPage(
    //   name: AppRoutes.RESETPSW,
    //   page: () => ResetPswPage(),
    //   binding: ResetPswBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.SIGNUP,
    //   page: () => SignUpPage(),
    //   binding: SignUpBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.USUARIOSLIST,
    //   page: () => UsuarioList(),
    //   binding: UsuarioListBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.USUARIOSEDIT,
    //   page: () => UsuarioEditPage(),
    //   binding: UsuarioEditBinding(),
    // ),
  ];
}
