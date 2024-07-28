import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewTaskList extends StatelessWidget {
  const CalendarViewTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomVerticalSizedBox(20),
      ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
              child: Container(
                  height: 76.h,
                  decoration: BoxDecoration(
                      color: whiteClr,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: borderClr,
                            blurRadius: 13,
                            spreadRadius: 0,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      calendarViewTaskModelList[index].taskName,
                                      style: Styles.textSize16.copyWith(
                                          fontWeight: FontWeight.w500)),
                                  Checkbox(
                                      value: true,
                                      onChanged: (bool? val) {},
                                      fillColor:
                                          WidgetStateProperty.all(checkClr),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)))
                                ]),
                            Text(calendarViewTaskModelList[index].date,
                                style: Styles.textSize12.copyWith(
                                    color: greyClr,
                                    fontWeight: FontWeight.w400))
                          ]))).animate().slideX(duration: 1000.ms)),
          itemCount: calendarViewTaskModelList.length),
      const CustomVerticalSizedBox(20)
    ]);
  }
}
