part of 'on_tap_bloc.dart';

abstract class OnTapEvent extends Equatable {
  const OnTapEvent();
}

class ButtonTappedEvent extends OnTapEvent {
  final String value;
  ButtonTappedEvent({this.value});

  @override
  List<Object> get props => [value];
}

class TileTappedEvent extends OnTapEvent {
  final int xPos;
  final int yPos;
  final int index;

  TileTappedEvent({this.xPos, this.yPos, this.index});

  @override
  List<Object> get props => [xPos, yPos, index];
}
