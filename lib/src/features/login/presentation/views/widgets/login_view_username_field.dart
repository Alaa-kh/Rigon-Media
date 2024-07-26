// Widget for the username input field
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewUsernameField extends StatelessWidget {
  const LoginViewUsernameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Username / Email',
          style: Styles.titleSmall
              .copyWith(color: darkClr, fontWeight: FontWeight.w600)),
      TextField(
        style: Styles.textSize16,
        decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: darkClr, width: 1.5)),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyClr, width: 1)),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: greyClr, width: 1)),
            hintText: 'Enter Username / Email here',
            hintStyle: Styles.titleSmall.copyWith(color: greyClr)),
      ),
      const CustomVerticalSizedBox(35),
    ]);
  }
}
