import 'package:rigon/src/core/constants/packages.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundClr,
            appBar: AppBar(
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(4.0),
                    child: Container(color: borderClr, height: 1)),
                backgroundColor: backgroundClr,
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 18.w),
                    child: SvgPicture.asset(IconsAssets.notificationIcon),
                  )
                ],
                leading: const Icon(Icons.menu, size: 24),
                title: Text('Calendar',
                    style: Styles.textSize16
                        .copyWith(fontWeight: FontWeight.w700))),
            body: const CalendarViewBody()));
  }
}
