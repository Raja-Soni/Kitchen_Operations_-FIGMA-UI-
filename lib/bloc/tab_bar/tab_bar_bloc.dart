import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_operations/bloc/tab_bar/tab_bar_bloc_event_state.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  TabBarBloc() : super(TabBarState()) {
    on<CurrentTabChangedEvent>(currentTabChangedEvent);
  }

  FutureOr<void> currentTabChangedEvent(
    CurrentTabChangedEvent event,
    Emitter<TabBarState> emit,
  ) {
    emit(state.copyWith(currentTabPage: event.currentTabPage));
  }
}
