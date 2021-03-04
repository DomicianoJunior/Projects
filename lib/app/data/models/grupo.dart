import 'package:flutter/material.dart';

class Grupo {
  final String idGrupo;
  final String nomeGrupo;

  // como todos os atributos são final posso criar o construtor como const
  const Grupo({
    @required this.idGrupo,
    @required this.nomeGrupo,
  });
}
