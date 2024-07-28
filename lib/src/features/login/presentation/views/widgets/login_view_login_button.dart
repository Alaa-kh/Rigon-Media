// Widget for the login button
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewLoginButton extends StatelessWidget {
  const LoginViewLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: darkClr,
                foregroundColor: whiteClr,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                minimumSize: Size(100.w, 56.h)),
            onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const RouteView();
                })),
            child: Text('Login',
                style: Styles.textSize16.copyWith(color: whiteClr)))
        .animate()
        .effect(duration: 1000.ms);
  }
}
