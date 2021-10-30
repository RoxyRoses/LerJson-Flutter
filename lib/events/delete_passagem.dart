import 'passagem_event.dart';

class DeletePassagem extends PassagemEvent {
  int PassagemIndex;

  DeletePassagem(int index) {
    PassagemIndex = index;
  }
}
