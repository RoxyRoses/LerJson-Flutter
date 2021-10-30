import 'listajsons.dart';
import 'package:LerJson/db/database_provider.dart';
import 'package:LerJson/events/delete_passagem.dart';
import 'package:LerJson/events/set_passagem.dart';
import 'package:LerJson/paginas/passagem_form.dart';
import 'package:LerJson/model/passagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/passagem_bloc.dart';

class PassagemList extends StatefulWidget {
  const PassagemList({Key key}) : super(key: key);

  @override
  _PassagemListState createState() => _PassagemListState();
}

class _PassagemListState extends State<PassagemList> {
  @override
  void initState() {
    super.initState();
    DatabaseProvider.db.getPassagens().then(
      (listaPassagem) {
        BlocProvider.of<BlocoPassagem>(context).add(SetPassagem(listaPassagem));
      },
    );
  }

  showContadorDialog(BuildContext context, Passagem count, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(count.placa),
        content: Text("ID ${count.id}"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    FormularioPassagem(passagem: count, passagemIndex: index),
              ),
            ),
            child: Text("Atualizar"),
          ),
          FlatButton(
            onPressed: () => DatabaseProvider.db.delete(count.id).then((_) {
              BlocProvider.of<BlocoPassagem>(context).add(
                DeletePassagem(index),
              );
              Navigator.pop(context);
            }),
            child: Text("Deletar"),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancelar"),
          ),
        ],
      ),
    );
  }

  mostrarDialogoPassagem(BuildContext context, Passagem passagem, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(passagem.placa),
        content: Text("ID ${passagem.id}"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => FormularioPassagem(
                    passagem: passagem, passagemIndex: index),
              ),
            ),
            child: Text("Atualizar"),
          ),
          FlatButton(
            onPressed: () => DatabaseProvider.db.delete(passagem.id).then((_) {
              BlocProvider.of<BlocoPassagem>(context).add(
                DeletePassagem(index),
              );
              Navigator.pop(context);
            }),
            child: Text("Deletar"),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancelar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Contruindo lista de Jsons");
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(title: Text("Passagem"), actions: <Widget>[
        TextButton(
          style: style,
          onPressed: () async {
            int count = await DatabaseProvider.db.contadorPassagem();
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Numero de Jsons'),
                      content: Text(
                        count.toString(),
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('voltar'),
                        ),
                      ],
                    ));
            DatabaseProvider.db.contadorPassagem();
            return;
          },
          child: const Text('Contador'),
        ),
      ]),
      body: Container(
        padding: EdgeInsets.all(8),
        color: Colors.grey,
        child: BlocConsumer<BlocoPassagem, List<Passagem>>(
          builder: (context, listaPassagem) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                print("Lista de Passagens: $listaPassagem");

                Passagem passagem = listaPassagem[index];
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    title: Text(passagem.placa, style: TextStyle(fontSize: 26)),
                    subtitle: Text(
                      "Placa: ${passagem.placa}\nData: ${passagem.data}\nHora: ${passagem.hora}\nEquipamento: ${passagem.equipamento}\nFaixa: ${passagem.faixa}",
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () =>
                        mostrarDialogoPassagem(context, passagem, index),
                  ),
                );
              },
              itemCount: listaPassagem.length,
            );
          },
          listener: (BuildContext context, listaPassagem) {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ListaJsons()),
        ),
      ),
    );
  }
}
