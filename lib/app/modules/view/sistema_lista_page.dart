import 'package:accessctrl/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:accessctrl/app/data/models/sistemas.dart';

class SistemaLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Sistema> lstSistema = [
      Sistema(id: '1', descricao: 'Controle de Acesso ', sigla: 'AC'),
      Sistema(id: '2', descricao: 'Contabilidade ', sigla: 'CTB'),
      Sistema(id: '3', descricao: 'Elaboração Orçamentária', sigla: 'ELA'),
      Sistema(id: '4', descricao: 'Execução Orçamentária', sigla: 'EXO'),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lista de Sistemas')),
          actions: [
            IconButton(
              icon: Icon(Icons.add), //onPressed: () {},
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.SISTEMASEDIT);
              },
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: lstSistema.length,
            itemBuilder: (context, i) =>
                _buildListSistemas(context, lstSistema[i])),
      ),
    );
  }

  Widget _buildListSistemas(context, Sistema s) {
    return ListTile(
      leading: CircleAvatar(child: Text(s.sigla.substring(0, 2))),
      title: Text(s.descricao, style: TextStyle(fontSize: 20)),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.SISTEMASEDIT,
                  // passo o sistema que foi clicado na lista como parametro para a tela de edicao
                  arguments: s,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Exclusão de Usuário'),
                    content: Text('Confirma a Exclusão?'),
                    actions: [
                      TextButton(
                        child: Text('Não'),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                      TextButton(
                        child: Text('Sim'),
                        onPressed: () => Navigator.of(context).pop(true),
                      )
                    ],
                  ),
                ).then(
                  (confirmed) {
                    // if (confirmed) {
                    //   Provider.of<Users>(context, listen: false).remove(user);
                    // }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
    // );
  }
}
