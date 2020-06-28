part of 'on_tap_bloc.dart';

abstract class OnTapState extends Equatable {
  const OnTapState();
}

class OnTapInitial extends OnTapState {
  @override
  List<Object> get props => [];
}

class TappedState extends OnTapState {
  final int index;
  final String value;
  TappedState({this.index, this.value});

  @override
  List<Object> get props => [index, value];
}

class ButtonTappedState extends OnTapState {
  @override
  List<Object> get props => [];
}
