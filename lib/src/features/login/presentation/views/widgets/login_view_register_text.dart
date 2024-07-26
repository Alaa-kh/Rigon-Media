// Widget for login register text
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewRegisterText extends StatelessWidget {
  const LoginViewRegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'Dont’t have an account? ',
            style: Styles.titleSmall.copyWith(color: greyClr),
            children: <TextSpan>[
              TextSpan(
                  text: 'Register Here',
                  style: Styles.titleSmall
                      .copyWith(fontWeight: FontWeight.w700, color: darkClr))
            ]));
  }
}
