part of 'on_tap_bloc.dart';

abstract class OnTapState extends Equatable {
  const OnTapState();
}

class OnTapInitial extends OnTapState {
  final bool isTapped = false;
  @override
  List<Object> get props => [];
}
