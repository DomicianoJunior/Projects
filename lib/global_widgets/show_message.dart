import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showMessage(int tipo, titulo, msg, BuildContext ctx) {
  switch (tipo) {
    case 0:
      Flushbar(title: titulo, message: msg, duration: Duration(seconds: 3))
        ..show(ctx);
      break;
    case 1:
      Flushbar(title: titulo, message: msg, duration: Duration(seconds: 3))
        ..show(ctx);
      break;
    case 2:
      Flushbar(title: titulo, message: msg, duration: Duration(seconds: 3))
        ..show(ctx);
      break;
    default:
  }
}
