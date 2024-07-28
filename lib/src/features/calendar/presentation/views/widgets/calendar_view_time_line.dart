import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewTimeLine extends StatelessWidget {
  const CalendarViewTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.w, right: 23.w),
        child: ListView.separated(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => Container(
                height: 70.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: calendarViewScheduleModelList[index].color),
                child: Stack(alignment: Alignment.center, children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(calendarViewScheduleModelList[index].date,
                                style: Styles.titleSmall),
                            Row(children: [
                              SvgPicture.asset(IconsAssets.clockIcon,
                                  colorFilter: const ColorFilter.mode(
                                      greyClr, BlendMode.modulate)),
                              const CustomHorizontalSizedBox(8),
                              Text(calendarViewScheduleModelList[index].time,
                                  style: Styles.textSize12.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: greyClr))
                            ])
                          ])),
                  Positioned(
                      left: 1.w,
                      child: Container(
                          height: 70.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              color: calendarViewScheduleModelList[index]
                                  .colorLine)))
                ])).animate().slideX(duration: 1000.ms),
            separatorBuilder: (BuildContext context, int index) =>
                const CustomVerticalSizedBox(15),
            itemCount: calendarViewScheduleModelList.length));
  }
}
