import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'keywoard_event.dart';
part 'keywoard_state.dart';

class KeywoardBloc extends Bloc<KeywoardEvent, KeywoardState> {
  KeywoardBloc() : super(KeywoardInitialState()) {
    on<ChangeKeywoardEvent>((event, emit) {
      emit(KeywoardSetState(event.newKeywoard));
    });
  }
}
