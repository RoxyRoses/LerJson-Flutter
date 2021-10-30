import 'package:LerJson/model/passagem.dart';

import 'passagem_event.dart';

class UpdatePassagem extends PassagemEvent {
  Passagem newPassagem;
  int PassagemIndex;

  UpdatePassagem(int index, Passagem passagem) {
    newPassagem = passagem;
    PassagemIndex = index;
  }
}
