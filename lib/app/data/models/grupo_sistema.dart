import 'package:flutter/material.dart';

class GrupoSistema {
  final String idGrupo;
  final String idSistema;
  final String idRotina;

  // como todos os atributos são final posso criar o construtor como const
  const GrupoSistema({
    @required this.idGrupo,
    @required this.idSistema,
    @required this.idRotina,
  });
}
