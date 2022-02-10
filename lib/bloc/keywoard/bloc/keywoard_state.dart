part of 'keywoard_bloc.dart';

@immutable
abstract class KeywoardState {
  final String? keywoard;
  const KeywoardState({
    this.keywoard,
  });
}

class KeywoardInitialState extends KeywoardState {
  const KeywoardInitialState() : super(keywoard: "Random");
}

class KeywoardSetState extends KeywoardState {
  final String newKeywoard;
  const KeywoardSetState(this.newKeywoard) : super(keywoard: newKeywoard);
}
