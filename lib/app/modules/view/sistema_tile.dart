import 'package:accessctrl/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:accessctrl/app/data/models/sistemas.dart';

class SistemaTile extends StatelessWidget {
  final Sistema oSis;

  const SistemaTile(this.oSis);

  @override
  Widget build(BuildContext context) {
    final avatar = Icon(Icons.person);
    return ListTile(
      leading: avatar,
      title: Text(oSis.descricao),
      //subtitle: Text(oSis.sigla),
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
                  // passo o usuario que foi clicado como parametro para a tela de edicao
                  arguments: oSis,
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
                    title: Text('Exclusão de Sistema'),
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
                    // // if (confirmed) {
                    // //   Provider.of<Users>(context, listen: false).remove(user);
                    // }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
