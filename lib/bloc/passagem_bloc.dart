import 'package:LerJson/events/add_passagem.dart';
import 'package:LerJson/events/delete_passagem.dart';
import 'package:LerJson/events/passagem_event.dart';
import 'package:LerJson/events/set_passagem.dart';
import 'package:LerJson/events/update_passagem.dart';
import 'package:LerJson/model/passagem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocoPassagem extends Bloc<PassagemEvent, List<Passagem>> {
  @override
  List<Passagem> get initialState => List<Passagem>();

  @override
  Stream<List<Passagem>> mapEventToState(PassagemEvent event) async* {
    if (event is SetPassagem) {
      yield event.PassagemList;
    } else if (event is AddPassagem) {
      List<Passagem> newState = List.from(state);
      if (event.newPassagem != null) {
        newState.add(event.newPassagem);
      }
      yield newState;
    } else if (event is DeletePassagem) {
      List<Passagem> newState = List.from(state);
      newState.removeAt(event.PassagemIndex);
      yield newState;
    } else if (event is UpdatePassagem) {
      List<Passagem> newState = List.from(state);
      newState[event.PassagemIndex] = event.newPassagem;
      yield newState;
    }
  }
}
