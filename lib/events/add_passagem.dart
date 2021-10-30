import 'package:LerJson/model/passagem.dart';

import 'passagem_event.dart';

class AddPassagem extends PassagemEvent {
  Passagem newPassagem;

  AddPassagem(Passagem Passagem) {
    newPassagem = Passagem;
  }
}
