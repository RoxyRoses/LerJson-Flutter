import 'package:LerJson/model/passagem.dart';

import 'passagem_event.dart';

class SetPassagem extends PassagemEvent {
  List<Passagem> PassagemList;

  SetPassagem(List<Passagem> Passagens) {
    PassagemList = Passagens;
  }
}
