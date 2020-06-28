import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_tap_event.dart';
part 'on_tap_state.dart';

class OnTapBloc extends Bloc<OnTapEvent, OnTapState> {
  @override
  OnTapState get initialState => OnTapInitial();

  @override
  Stream<OnTapState> mapEventToState(
    OnTapEvent event,
  ) async* {
    if (event is TileTappedEvent){
      print("${event.xPos}, ${event.yPos},");
    }
  }
}
