import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_operations/bloc/bottom_nav_bar/bottom_nav_bar_bloc_event_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarState()) {
    on<CurrentBNBTabChangedEvent>(currentBNBTabChangedEvent);
  }

  FutureOr<void> currentBNBTabChangedEvent(
    CurrentBNBTabChangedEvent event,
    Emitter<BottomNavBarState> emit,
  ) {
    emit(state.copyWith(currentBNBPageIndex: event.currentBNBPageIndex));
  }
}
