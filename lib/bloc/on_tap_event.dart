part of 'on_tap_bloc.dart';

abstract class OnTapEvent extends Equatable {
  const OnTapEvent();
}

class ButtonTappedEvent extends OnTapEvent {
  final int value;
  ButtonTappedEvent({this.value});

  @override
  List<Object> get props => [];
}

class TileTappedEvent extends OnTapEvent {
  
  @override
  List<Object> get props => [];
}

class BackgroundTappedEvent extends OnTapEvent {
  
  @override
  List<Object> get props => [];
}
