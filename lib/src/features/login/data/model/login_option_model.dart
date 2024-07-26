// class for login option list
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewOptionsModel {
  final String label;
  final String icon;
  LoginViewOptionsModel({
    required this.label,
    required this.icon,
  });
}

List<LoginViewOptionsModel> loginViewOptionsModelList = [
  LoginViewOptionsModel(
      icon: IconsAssets.googleIcon, label: 'Continue with Google'),
  LoginViewOptionsModel(
      icon: IconsAssets.facebookIcon, label: 'Continue with Facebook'),
  LoginViewOptionsModel(
      icon: IconsAssets.appleIcon, label: 'Continue with Apple')
];
