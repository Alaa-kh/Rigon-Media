import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewBody extends StatelessWidget {
  const CalendarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      // const Spacer(),
      const CalendarViewDateName(),
      // const Spacer(),
      const ClendarViewSlider(),
      // const Spacer(),
      DefaultTabController(
          length: 2,
          child: Column(children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20.w),
                unselectedLabelStyle:
                    Styles.textSize18.copyWith(color: greyClr),
                labelStyle: Styles.textSize18,
                indicatorColor: darkClr,
                tabs: const [
                  Tab(text: 'Schedule'),
                  Tab(text: 'Task'),
                ]),
            Container(
                color: whiteClr,
                width: double.infinity,
                height: 400.h,
                child: const TabBarView(children: [
                  CalendarViewSchedule(),
                  SingleChildScrollView(child: CalendarViewTaskList())
                ]))
          ]))
    ]));
  }
}
