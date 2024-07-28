import 'package:rigon/src/core/constants/packages.dart';

class RouteViewTableCalendar extends StatelessWidget {
  const RouteViewTableCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteCubit, RouteState>(
        builder: (BuildContext context, RouteState state) => TableCalendar(
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: Styles.titleSmall,
                  weekendStyle: Styles.titleSmall),
              calendarStyle: CalendarStyle(
                  rangeStartDecoration: const BoxDecoration(
                      color: darkClr, shape: BoxShape.circle),
                  selectedTextStyle: Styles.titleSmall,
                  holidayTextStyle: Styles.titleSmall,
                  weekendTextStyle: Styles.titleSmall,
                  todayDecoration: const BoxDecoration(
                      color: darkClr, shape: BoxShape.circle),
                  defaultTextStyle: Styles.titleSmall,
                  todayTextStyle: Styles.titleSmall.copyWith(color: whiteClr),
                  disabledTextStyle: Styles.titleSmall,
                  markerDecoration: const BoxDecoration(color: darkClr)),
              headerStyle: HeaderStyle(
                  titleTextStyle: Styles.titleSmall,
                  formatButtonTextStyle: Styles.titleSmall,
                  formatButtonVisible: false,
                  titleCentered: true),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              availableGestures: AvailableGestures.all,
              focusedDay: context.read<RouteCubit>().focus,
              rangeStartDay: context.read<RouteCubit>().today,
              onDaySelected: (selectedDay, focusedDay) => context
                  .read<RouteCubit>()
                  .onDaySelected(selectedDay, focusedDay),
            ));
  }
}
