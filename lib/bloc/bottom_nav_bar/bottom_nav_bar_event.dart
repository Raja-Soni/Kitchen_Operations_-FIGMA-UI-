import 'package:equatable/equatable.dart';

abstract class BottomNavBarEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CurrentBNBTabChangedEvent extends BottomNavBarEvent {
  final int currentBNBPageIndex;
  CurrentBNBTabChangedEvent({required this.currentBNBPageIndex});
}
