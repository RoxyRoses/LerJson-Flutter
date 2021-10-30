import 'package:LerJson/api/passagemapi.dart';
import 'package:LerJson/bloc/passagem_bloc.dart';
import 'package:LerJson/db/database_provider.dart';
import 'package:LerJson/events/add_passagem.dart';
import 'package:LerJson/model/passagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormularioPassagem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Adicionar JSON")),
        body: FutureBuilder<List<Passagem>>(
          future: PassagemApi.carregarJson6(context),
          builder: (context, snapshot) {
            final passagens = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Error'));
                } else {
                  return buildPassagens(passagens);
                }
            }
          },
        ),
      );

  Widget buildPassagens(List<Passagem> passagens) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: passagens.length,
        itemBuilder: (context, index) {
          final passagem = passagens[index];

          return Column(
            children: <Widget>[
              Text('ID',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text(
                passagem.id.toString(),
                style: TextStyle(height: 1, fontSize: 25),
              ),
              Text('Placa',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text(
                passagem.placa,
                style: TextStyle(height: 1, fontSize: 25),
              ),
              Text('Data',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text(
                passagem.data,
                style: TextStyle(height: 1, fontSize: 25),
              ),
              Text('Hora',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text(
                passagem.hora,
                style: TextStyle(height: 1, fontSize: 25),
              ),
              Text('Equipamento',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text(
                passagem.equipamento,
                style: TextStyle(height: 1, fontSize: 25),
              ),
              Text('Faixa',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text(
                passagem.faixa,
                style: TextStyle(height: 1, fontSize: 25),
              ),
              RaisedButton(
                  child: Text(
                    'Cadastrar Json',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    DatabaseProvider.db.insert(passagem).then(
                          (passagemGuardada) =>
                              BlocProvider.of<BlocoPassagem>(context).add(
                            AddPassagem(passagemGuardada),
                          ),
                        );

                    Navigator.pop(context);
                  })
            ],
          );
        },
      );
}
