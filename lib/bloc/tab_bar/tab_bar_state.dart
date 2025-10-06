import 'package:equatable/equatable.dart';

import '../../Pages/schedule_page.dart';

class TabBarState extends Equatable {
  final dynamic currentTabPage;

  const TabBarState({this.currentTabPage = const SchedulePage()});

  TabBarState copyWith({int? currentIndex, dynamic currentTabPage}) {
    return TabBarState(currentTabPage: currentTabPage ?? this.currentTabPage);
  }

  @override
  List<Object?> get props => [currentTabPage];
}
