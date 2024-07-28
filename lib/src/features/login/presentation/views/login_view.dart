// Main login screen widget
import 'package:rigon/src/core/constants/packages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: LoginViewBody()),
      ),
    );
  }
}
