import 'package:rigon/src/core/constants/packages.dart';

abstract class Styles {
  static TextStyle titleSmall =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle titleMedium = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, color: darkClr);
  static TextStyle textSize16 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: darkClr);
  static TextStyle textSize12 =
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle textSize18 = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: darkClr);
  static TextStyle textSizeChart = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: greyClr);
  static TextStyle textSize14 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
}
