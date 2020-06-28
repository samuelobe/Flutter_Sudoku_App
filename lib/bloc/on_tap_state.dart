part of 'on_tap_bloc.dart';

abstract class OnTapState extends Equatable {
  const OnTapState();
}

class OnTapInitial extends OnTapState {
  final bool isTapped = false;
  @override
  List<Object> get props => [isTapped];
}

class TappedState extends OnTapState {
  final int index;
  TappedState({this.index});

  @override
  List<Object> get props => [index];
}
