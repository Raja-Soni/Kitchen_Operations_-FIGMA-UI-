import 'package:equatable/equatable.dart';

class BottomNavBarState extends Equatable {
  final int? currentBNBPageIndex;

  const BottomNavBarState({this.currentBNBPageIndex = 0});

  BottomNavBarState copyWith({int? currentBNBPageIndex}) {
    return BottomNavBarState(
      currentBNBPageIndex: currentBNBPageIndex ?? this.currentBNBPageIndex,
    );
  }

  @override
  List<Object?> get props => [currentBNBPageIndex];
}
