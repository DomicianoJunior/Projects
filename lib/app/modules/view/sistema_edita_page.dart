import 'package:accessctrl/app/data/models/sistemas.dart';

import 'package:flutter/material.dart';

class SistemaEditaPage extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(Sistema oSistema) {
    if (oSistema != null) {
      _formData['id'] = oSistema.id;
      _formData['descricao'] = oSistema.descricao;
      _formData['sigla'] = oSistema.sigla;
      print(oSistema.id);
      print(oSistema.descricao);
      print(oSistema.sigla);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Sistema oSistema = ModalRoute.of(context).settings.arguments;

    _loadFormData(oSistema);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Cadastro de Sistemas'),
            actions: [
              IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  final isValid = _form.currentState.validate();
                  // Ver video no minuto '1:03:10 - Explicando como validar os campos do form
                  if (isValid) {
                    _form.currentState.save();
                    print('vai salvar');
                    //addSistemaToList(),

                    // Provider.of<oSistemas>(context, listen: false).put(
                    //   oSistema(
                    //     id: _formData['id'],
                    //     name: _formData['name'],
                    //     email: _formData['email'],
                    //     avatarUrl: _formData['avatarUrl'],
                    //   ),
                    // );

                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Form(
              // a variavel _form esta definida como privada e serve para eu poder submeter(?) esse formulario
              key: _form,
              child: Column(
                children: [
                  TextFormField(
                    // olhar o video no minuto 57:40
                    initialValue: _formData['descricao'],
                    decoration: InputDecoration(labelText: 'Descrição'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Descrição é obrigatória';
                      }
                      if (value.trim().length < 3) {
                        return 'Descrição muito pequena';
                      }
                      return null;
                    },
                    onSaved: (value) => _formData['descricao'] = value,
                  ),
                  TextFormField(
                    initialValue: _formData['sigla'],
                    decoration: InputDecoration(labelText: 'Sigla'),
                    onSaved: (value) => _formData['sigla'] = value,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
