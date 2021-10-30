import 'package:LerJson/paginas/passagem_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/passagem_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocoPassagem>(
      create: (context) => BlocoPassagem(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Passagem',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PassagemList(),
      ),
    );
  }
}
