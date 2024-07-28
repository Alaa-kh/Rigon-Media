import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewRowTime extends StatelessWidget {
  const CalendarViewRowTime({
    super.key,
    required this.time,
    this.fontWeight,
  });

  final String time;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: Text(time,
              style: Styles.textSize12.copyWith(fontWeight: fontWeight))),
      const CustomHorizontalSizedBox(10),
      SvgPicture.asset(IconsAssets.rectangle2981Icon, width: double.minPositive)
    ]);
  }
}
