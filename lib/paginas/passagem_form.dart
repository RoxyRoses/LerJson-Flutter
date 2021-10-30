import 'package:LerJson/bloc/passagem_bloc.dart';
import 'package:LerJson/db/database_provider.dart';
import 'package:LerJson/events/add_passagem.dart';
import 'package:LerJson/events/update_passagem.dart';
import 'package:LerJson/model/passagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

class FormularioPassagem extends StatefulWidget {
  final Passagem passagem;
  final int passagemIndex;

  FormularioPassagem({this.passagem, this.passagemIndex});

  @override
  State<StatefulWidget> createState() {
    return FormularioPassagemState();
  }
}

class FormularioPassagemState extends State<FormularioPassagem> {
  String _placa;
  String _data;
  String _hora;
  String _equipamento;
  String _faixa;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildPlaca() {
    return TextFormField(
      initialValue: _placa,
      decoration: InputDecoration(labelText: 'Placa'),
      maxLength: 15,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Digite a placa';
        }

        return null;
      },
      onSaved: (String value) {
        _placa = value;
      },
    );
  }

  Widget _buildData() {
    return TextFormField(
      initialValue: _data,
      decoration: InputDecoration(labelText: 'Data'),
      maxLength: 15,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Digite a data';
        }

        return null;
      },
      onSaved: (String value) {
        _data = value;
      },
    );
  }

  Widget _buildHora() {
    return TextFormField(
      initialValue: _hora,
      decoration: InputDecoration(labelText: 'Hora'),
      maxLength: 15,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Digite a hora';
        }

        return null;
      },
      onSaved: (String value) {
        _hora = value;
      },
    );
  }

  Widget _buildEquipamento() {
    return TextFormField(
      initialValue: _equipamento,
      decoration: InputDecoration(labelText: 'Equipamento'),
      maxLength: 15,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Digite o Equipamento';
        }

        return null;
      },
      onSaved: (String value) {
        _equipamento = value;
      },
    );
  }

  Widget _buildFaixa() {
    return TextFormField(
      initialValue: _faixa,
      decoration: InputDecoration(labelText: 'Faixa'),
      maxLength: 15,
      style: TextStyle(fontSize: 28),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Digite a Faixa';
        }

        return null;
      },
      onSaved: (String value) {
        _faixa = value;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.passagem != null) {
      _placa = widget.passagem.placa;
      _data = widget.passagem.data;
      _hora = widget.passagem.hora;
      _equipamento = widget.passagem.equipamento;
      _faixa = widget.passagem.faixa;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulario Passagem")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildPlaca(),
              _buildData(),
              _buildHora(),
              _buildEquipamento(),
              _buildFaixa(),
              SizedBox(height: 16),
              SizedBox(height: 20),
              widget.passagem == null
                  ? RaisedButton(
                      child: Text(
                        'Salvar',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();

                        Passagem passagem = Passagem(
                          placa: _placa,
                          data: _data,
                          hora: _hora,
                          equipamento: _equipamento,
                          faixa: _faixa,
                        );

                        DatabaseProvider.db.insert(passagem).then(
                              (passagemGuardada) =>
                                  BlocProvider.of<BlocoPassagem>(context).add(
                                AddPassagem(passagemGuardada),
                              ),
                            );

                        Navigator.pop(context);
                      },
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: Text(
                            "Atualizar",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                              print("formulario");
                              return;
                            }

                            _formKey.currentState.save();

                            Passagem passsagem = Passagem(
                              placa: _placa,
                              data: _data,
                              hora: _hora,
                              equipamento: _equipamento,
                              faixa: _faixa,
                            );

                            DatabaseProvider.db.update(widget.passagem).then(
                                  (passagemGuardada) =>
                                      BlocProvider.of<BlocoPassagem>(context)
                                          .add(
                                    UpdatePassagem(
                                        widget.passagemIndex, passsagem),
                                  ),
                                );

                            Navigator.pop(context);
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            "Cancelar",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
