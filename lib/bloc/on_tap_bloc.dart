import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_tap_event.dart';
part 'on_tap_state.dart';

class OnTapBloc extends Bloc<OnTapEvent, OnTapState> {
  int currentTappedIndex;
  OnTapBloc() : super(OnTapInitial());

  @override
  Stream<OnTapState> mapEventToState(
    OnTapEvent event,
  ) async* {
    if (event is TileTappedEvent) {
      currentTappedIndex = event.index;
      yield TappedState(index: currentTappedIndex, value: "");
    } else if (event is ButtonTappedEvent) {
      yield TappedState(index: currentTappedIndex, value: event.value);
    }
  }
}
