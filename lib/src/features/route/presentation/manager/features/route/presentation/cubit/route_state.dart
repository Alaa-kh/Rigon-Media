// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'route_cubit.dart';

abstract class RouteState extends Equatable {
  const RouteState();

  @override
  List<Object> get props => [];
}

class RouteInitial extends RouteState {}

class RouteNavigator extends RouteState {
  final int index;
  const RouteNavigator(this.index);
}

class CalendarState extends RouteState {
  final DateTime selectedDay;
  final DateTime focusDay;

  const CalendarState(this.selectedDay,this.focusDay);
}
