import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_operations/bloc/cancel_running_order/cancel_running_order_bloc_event_state.dart';

class CancelRunningOrderBloc
    extends Bloc<CancelRunningOrderEvent, CancelRunningOrderState> {
  CancelRunningOrderBloc() : super(CancelRunningOrderState()) {
    on<IsCancelOrderButtonTapped>(isCancelOrderButtonTapped);
  }

  FutureOr<void> isCancelOrderButtonTapped(
    IsCancelOrderButtonTapped event,
    Emitter<CancelRunningOrderState> emit,
  ) {
    emit(state.copyWith(cancelOrderButtonTapped: event.isButtonTapped));
  }
}
