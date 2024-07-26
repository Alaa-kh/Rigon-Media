import 'package:rigon/src/core/constants/packages.dart';

class ProjectViewButton extends StatelessWidget {
  const ProjectViewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 48.h),
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: darkClr),
                borderRadius: BorderRadius.circular(8)),
            backgroundColor: backgroundClr),
        child: Text('View All Project',
            style: Styles.titleSmall
                .copyWith(fontWeight: FontWeight.w700, color: darkClr)));
  }
}
