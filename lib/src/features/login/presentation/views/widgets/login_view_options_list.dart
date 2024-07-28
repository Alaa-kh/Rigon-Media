// Widget for login option list
import 'package:rigon/src/core/constants/packages.dart';

class LoginViewOptionsList extends StatelessWidget {
  const LoginViewOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
            minTileHeight: 56,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: borderClr)),
            leading: SvgPicture.asset(loginViewOptionsModelList[index].icon)
                .animate()
                .rotate(duration: 1000.ms),
            title: Text(loginViewOptionsModelList[index].label,
                    style:
                        Styles.textSize16.copyWith(fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center)
                .animate()
                .rotate(duration: 1000.ms)),
        separatorBuilder: (BuildContext context, int index) =>
            const CustomVerticalSizedBox(16),
        itemCount: loginViewOptionsModelList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics());
  }
}
