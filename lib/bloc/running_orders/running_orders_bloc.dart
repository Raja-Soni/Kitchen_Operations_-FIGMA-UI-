import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_operations/bloc/running_orders/running_orders_bloc_event_state.dart';

class RunningOrderBloc extends Bloc<RunningOrderEvents, RunningOrdersState> {
  RunningOrderBloc() : super(RunningOrdersState()) {
    on<ItemExpandedAtIndexEvent>(itemExpandedAtIndexEvent);
  }

  FutureOr<void> itemExpandedAtIndexEvent(
    ItemExpandedAtIndexEvent event,
    Emitter<RunningOrdersState> emit,
  ) {
    List<bool> tempList = List.from(state.isCurrentItemExpanded!);
    tempList[event.index] = tempList[event.index] ? false : true;
    emit(state.copyWith(isCurrentItemExpanded: tempList));
  }
}
