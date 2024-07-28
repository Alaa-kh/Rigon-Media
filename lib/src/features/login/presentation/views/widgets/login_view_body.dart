import 'package:rigon/src/core/constants/packages.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LoginViewHeader(), // Header section
          LoginViewUsernameField(), // Username input field
          LoginViewPasswordField(), // Password input field
          LoginViewForgotPassword(), // Forgot Password link
          CustomVerticalSizedBox(40),
          LoginViewLoginButton(), // Login button
          CustomVerticalSizedBox(20),
          LoginViewOtherLoginOption(), // Text for alternative login option
          CustomVerticalSizedBox(20),
          LoginViewOptionsList(), // Login option list
          CustomVerticalSizedBox(50),
          LoginViewRegisterText() // Text for register
        ],
      ),
    );
  }
}
