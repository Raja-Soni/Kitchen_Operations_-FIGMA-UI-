import 'package:equatable/equatable.dart';

class RunningOrdersState extends Equatable {
  final List<bool>? isCurrentItemExpanded;
  final int? index;

  const RunningOrdersState({
    this.isCurrentItemExpanded = const [false, false, false],
    this.index = 0,
  });

  RunningOrdersState copyWith({List<bool>? isCurrentItemExpanded, int? index}) {
    return RunningOrdersState(
      isCurrentItemExpanded:
          isCurrentItemExpanded ?? this.isCurrentItemExpanded,
      index: index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [isCurrentItemExpanded, index];
}
