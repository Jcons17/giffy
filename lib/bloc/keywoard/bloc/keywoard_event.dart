part of 'keywoard_bloc.dart';

@immutable
abstract class KeywoardEvent {}

class ChangeKeywoardEvent extends KeywoardEvent {
  final String newKeywoard;
  ChangeKeywoardEvent({
    required this.newKeywoard,
  });
}
