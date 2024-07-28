import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewSchedule extends StatelessWidget {
  const CalendarViewSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      const CustomVerticalSizedBox(20),
      const CalendarViewRowTime(time: '09.00', fontWeight: FontWeight.w400),
      Padding(
          padding: EdgeInsets.only(left: 30.w, right: 23.w),
          child: Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: purpleLightClr),
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sprint Review Period 02 in May 2022',
                              style: Styles.titleSmall),
                          Row(children: [
                            SvgPicture.asset(IconsAssets.clockIcon,
                                colorFilter: const ColorFilter.mode(
                                    greyClr, BlendMode.modulate)),
                            const CustomHorizontalSizedBox(8),
                            Text('09:00 AM - 10:00 AM',
                                style: Styles.textSize12.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: greyClr))
                          ])
                        ])),
                Positioned(
                    left: 1,
                    child: Container(
                        height: 70.h,
                        width: 6.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                            color: purpleLineClr)))
              ])).animate().slideX(duration: 1000.ms)),
      const CustomVerticalSizedBox(10),
      const CalendarViewRowTime(time: '10.00', fontWeight: FontWeight.w400),
      const CustomVerticalSizedBox(40),
      const CalendarViewRowTime(time: '10.40'),
      const CalendarViewRowTime(time: '10.00', fontWeight: FontWeight.w400),
      const CalendarViewTimeLine(),
      const CalendarViewRowTime(time: '13.00', fontWeight: FontWeight.w400)
    ]));
  }
}
