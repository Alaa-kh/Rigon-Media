class CalendarViewTaskModel {
  final String taskName;
  final String date;
  CalendarViewTaskModel({
    required this.taskName,
    required this.date,
  });
}

List<CalendarViewTaskModel> calendarViewTaskModelList = [
  CalendarViewTaskModel(
      taskName: 'Meeting Concept', date: 'Due Date : Mon, 12 Jan 2023'),
  CalendarViewTaskModel(
      taskName: 'Information Architecture',
      date: 'Due Date : Mon, 12 Jan 2023'),
  CalendarViewTaskModel(
      taskName: 'Monitoring Project', date: 'Due Date : Mon, 12 Jan 2023'),
  CalendarViewTaskModel(
      taskName: 'Daily Standup', date: 'Due Date : Mon, 12 Jan 2023')
];
