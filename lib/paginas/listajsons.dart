import 'package:LerJson/paginas/passagemform1.dart';
import 'package:LerJson/paginas/passagemform10.dart';
import 'package:LerJson/paginas/passagemform11.dart';
import 'package:LerJson/paginas/passagemform12.dart';
import 'package:LerJson/paginas/passagemform13.dart';
import 'package:LerJson/paginas/passagemform14.dart';
import 'package:LerJson/paginas/passagemform2.dart';
import 'package:LerJson/paginas/passagemform3.dart';
import 'package:LerJson/paginas/passagemform4.dart';
import 'package:LerJson/paginas/passagemform5.dart';
import 'package:LerJson/paginas/passagemform6.dart';
import 'package:LerJson/paginas/passagemform7.dart';
import 'package:LerJson/paginas/passagemform8.dart';
import 'package:LerJson/paginas/passagemform9.dart';
import 'package:flutter/material.dart';

class ListaJsons extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Adicionar JSON")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 1',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem2()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 2',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem1()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 3',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem3()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 4',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem4()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 5',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem5()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 6',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem6()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 7',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem7()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 8',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem8()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 9',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem9()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 10',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem10()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 11',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem11()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 12',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem12()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 13',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem13()),
                          )),
                ),
              ),
              Container(
                child: Center(
                  child: RaisedButton(
                      child: Text(
                        'Cadastrar Json 14',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FormularioPassagem14()),
                          )),
                ),
              ),
            ],
          ),
        ),
      );
}
