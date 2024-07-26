// Widget for the password input field
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewPasswordField extends StatelessWidget {
  const LoginViewPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Password',
          style: Styles.titleSmall
              .copyWith(color: darkClr, fontWeight: FontWeight.w600)),
      TextField(
          style: Styles.textSize16,
          decoration: InputDecoration(
              suffix: SvgPicture.asset(IconsAssets.eyeIcon),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: darkClr, width: 1.5)),
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyClr, width: 1)),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: greyClr, width: 1)),
              hintText: 'Enter password here',
              hintStyle: Styles.titleSmall.copyWith(color: greyClr))),
      const CustomVerticalSizedBox(20)
    ]);
  }
}
