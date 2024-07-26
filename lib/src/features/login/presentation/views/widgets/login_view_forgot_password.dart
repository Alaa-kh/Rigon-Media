// Widget for the forgot password link
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewForgotPassword extends StatelessWidget {
  const LoginViewForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Forgot Password ?',
        style: Styles.titleSmall, textAlign: TextAlign.end);
  }
}
