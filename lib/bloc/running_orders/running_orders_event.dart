import 'package:equatable/equatable.dart';

abstract class RunningOrderEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class ItemExpandedAtIndexEvent extends RunningOrderEvents {
  final int index;
  ItemExpandedAtIndexEvent({required this.index});
}
