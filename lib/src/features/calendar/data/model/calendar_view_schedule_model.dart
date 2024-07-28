import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewScheduleModel {
  final String date;
  final String time;
  final Color color;
  final Color colorLine;

  CalendarViewScheduleModel({
    required this.date,
    required this.time,
    required this.color,
    required this.colorLine,
  });
}

List<CalendarViewScheduleModel> calendarViewScheduleModelList = [
  CalendarViewScheduleModel(
      date: 'Meeting with Client',
      time: '11:00 AM - 12:00 AM',
      color: orangeLightClr,
      colorLine: orangeLineClr),
  CalendarViewScheduleModel(
      date: 'Daily Standup',
      time: '12:00 AM - 12:30 PM',
      color: greenLightClr,
      colorLine: greenLineClr)
];
