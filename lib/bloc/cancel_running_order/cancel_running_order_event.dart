import 'package:equatable/equatable.dart';

class CancelRunningOrderEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class IsCancelOrderButtonTapped extends CancelRunningOrderEvent {
  final bool isButtonTapped;
  IsCancelOrderButtonTapped({required this.isButtonTapped});
}
