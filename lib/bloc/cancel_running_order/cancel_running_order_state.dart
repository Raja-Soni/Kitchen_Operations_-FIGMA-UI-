import 'package:equatable/equatable.dart';

class CancelRunningOrderState extends Equatable {
  final bool? cancelOrderButtonTapped;

  CancelRunningOrderState({this.cancelOrderButtonTapped = false});

  CancelRunningOrderState copyWith({bool? cancelOrderButtonTapped}) {
    return CancelRunningOrderState(
      cancelOrderButtonTapped:
          cancelOrderButtonTapped ?? this.cancelOrderButtonTapped,
    );
  }

  @override
  List<Object?> get props => [cancelOrderButtonTapped];
}
