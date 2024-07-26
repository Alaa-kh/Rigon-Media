import 'package:rigon/src/core/constants/packages.dart';

class ProjectViewBody extends StatelessWidget {
  const ProjectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
            Wrap(verticalDirection: VerticalDirection.down, children: <Widget>[
      Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Search',
                    style: Styles.titleSmall
                        .copyWith(color: darkClr, fontWeight: FontWeight.w600)),
                const ProjectViewTextField(),
                const CustomVerticalSizedBox(30),
                const ProjectViewContainersList(),
                const CustomVerticalSizedBox(30),
                const ProjectViewButton(),
                const CustomVerticalSizedBox(20),
              ])),
      const Spacer(),
      Container(
          color: whiteClr,
          child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Wrap(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Productivity', style: Styles.textSize18),
                      SvgPicture.asset(IconsAssets.moreIcon)
                    ]),
                Expanded(
                    child: SizedBox(
                        height: 240.h, child: const ProjectViewBarChart()))
              ])))
    ]));
  }
}
