import 'package:rigon/src/core/constants/packages.dart';

class ProjectViewTextField extends StatelessWidget {
  const ProjectViewTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: Styles.textSize16,
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: darkClr, width: .1)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: darkClr, width: 1)),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: darkClr, width: .1)),
            disabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: darkClr, width: .1)),
            hintText: 'Search project here',
            hintStyle: Styles.textSize14.copyWith(color: greyClr),
            suffix: SvgPicture.asset(IconsAssets.searchIcon)));
  }
}
