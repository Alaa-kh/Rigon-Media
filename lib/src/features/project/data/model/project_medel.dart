import 'package:rigon/src/core/constants/packages.dart';

class ProjectModel {
  final String text;
  final String icon;
  final int number;
  final LinearGradient color;
  ProjectModel({
    required this.text,
    required this.icon,
    required this.number,
    required this.color,
  });
}

List<ProjectModel> projectModelList = [
  ProjectModel(
      icon: IconsAssets.clockIcon,
      text: 'Project\nIn Progress',
      number: 10,
      color: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [celestialBlueClr, celestialBlueLightClr])),
  ProjectModel(
      icon: IconsAssets.verifyIcon,
      text: 'Project\nCompeted',
      number: 24,
      color: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [shadesSeaClr, shadesSeaClrLightClr])),
  ProjectModel(
      icon: IconsAssets.closeIcon,
      text: 'Project\nCancelled',
      number: 5,
      color: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [pastelRedClr, pastelRedClrLightClr]))
];
