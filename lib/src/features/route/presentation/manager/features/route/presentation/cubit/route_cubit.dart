import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit() : super(RouteInitial());

  int currntIndex = 0;
  void changeIndex(int index) {
    currntIndex = index;
    emit(RouteNavigator(index));
    emit(RouteInitial());
  }

  DateTime today = DateTime.now();
  DateTime focus = DateTime.now();

  void onDaySelected(DateTime day, DateTime focusDay) {
    today = day;
    focus = focusDay;
    emit(CalendarState(day, focusDay));
    // emit(RouteInitial());
  }
}
