import 'package:rigon/src/core/constants/packages.dart';

class ProjectViewContainersList extends StatelessWidget {
  const ProjectViewContainersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 150.h,
        child: Center(
            child: ListView.separated(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext cotext, int index) => Container(
                      height: 100.h,
                      width: 104.w,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: greyClr,
                                offset: Offset(0, 4),
                                blurRadius: 10,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.circular(8),
                          gradient: projectModelList[index].color),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(projectModelList[index].number.toString(),
                                  style: Styles.titleMedium
                                      .copyWith(color: whiteClr)),
                              SvgPicture.asset(projectModelList[index].icon)
                            ],
                          ),
                          Text(projectModelList[index].text,
                              style: Styles.textSize12.copyWith(
                                  fontWeight: FontWeight.w500, color: whiteClr))
                        ],
                      ),
                    ).animate().slideY(duration: 1000.ms),
                separatorBuilder: (BuildContext cotext, int index) =>
                    const CustomHorizontalSizedBox(20),
                itemCount: projectModelList.length)));
  }
}
