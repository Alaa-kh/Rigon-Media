// Widget for header for the login screen
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewHeader extends StatelessWidget {
  const LoginViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Login', style: Styles.titleMedium),
      const CustomVerticalSizedBox(8),
      Text('Sign in to your account',
          style: Styles.titleSmall.copyWith(color: greyClr)),
      const CustomVerticalSizedBox(28)
    ]);
  }
}
