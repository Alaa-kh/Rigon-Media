// Widget for the alternative login option text
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewOtherLoginOption extends StatelessWidget {
  const LoginViewOtherLoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Or login with account',
        style: Styles.textSize12.copyWith(color: greyClr),
        textAlign: TextAlign.center);
  }
}
