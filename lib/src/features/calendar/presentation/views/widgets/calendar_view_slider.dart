import 'package:rigon/src/core/constants/packages.dart';

class ClendarViewSlider extends StatelessWidget {
  const ClendarViewSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarSlider(
        tileHeight: 68.h,
        selectedTileHeight: 68,
        fullCalendar: false,
        dateColor: greyClr,
        calendarEventColor: darkClr,
        disabledTileBackgroundColor: whiteClr,
        backgroundColor: backgroundClr,
        selectedDateColor: whiteClr,
        selectedTileBackgroundColor: darkClr,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 140)),
        lastDate: DateTime.now().add(const Duration(days: 4)),
        onDateSelected: (date) {});
  }
}
