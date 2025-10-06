import 'package:equatable/equatable.dart';

abstract class TabBarEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CurrentTabChangedEvent extends TabBarEvent {
  final dynamic currentTabPage;
  CurrentTabChangedEvent({this.currentTabPage});
}
