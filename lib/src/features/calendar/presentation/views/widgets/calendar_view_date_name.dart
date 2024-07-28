import 'package:rigon/src/core/constants/packages.dart';

class CalendarViewDateName extends StatelessWidget {
  const CalendarViewDateName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Flexible(
              child: DropdownDatePicker(
                  textStyle: Styles.textSize18,
                  showDay: false,
                  showYear: false,
                  dateformatorder: OrderFormat.MYD,
                  inputDecoration: const InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  isDropdownHideUnderline: false,
                  isFormValidator: false)),
          Row(children: [
            SvgPicture.asset(IconsAssets.arrowIcon),
            const CustomHorizontalSizedBox(5),
            SvgPicture.asset(IconsAssets.arrow2Icon)
          ])
        ]));
  }
}
