import 'package:flutter/cupertino.dart';
import 'package:rigon/src/core/constants/packages.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundClr,
            appBar: AppBar(
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(4.0),
                    child: Container(color: borderClr, height: 1)),
                backgroundColor: backgroundClr,
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 18.w),
                    child: SvgPicture.asset(IconsAssets.notificationIcon),
                  )
                ],
                leading: const Icon(Icons.menu, size: 24),
                title: Text('Project Summary',
                    style: Styles.textSize16
                        .copyWith(fontWeight: FontWeight.w700))),
            body: const ProjectViewBody(),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: greyClr,
                      offset: Offset(0, 6),
                      blurRadius: 13,
                      spreadRadius: 0)
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: BottomAppBar(
                    color: whiteClr,
                    elevation: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildNavBarItem(IconsAssets.categoryIcon),
                          buildNavBarItem(IconsAssets.folderIcon),
                          const CustomHorizontalSizedBox(20),
                          buildNavBarItem(IconsAssets.calendarIcon),
                          buildNavBarItem(IconsAssets.memoji2Icon)
                        ])),
              ),
            ),
            floatingActionButton: Padding(
                padding: EdgeInsets.only(top: 23.h),
                child: Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: darkClr,
                      boxShadow: [
                        BoxShadow(
                            color: greyClr,
                            offset: Offset(0, 4),
                            blurRadius: 11,
                            spreadRadius: 0)
                      ],
                    ),
                    child: const Icon(CupertinoIcons.add,
                        size: 28, color: whiteClr))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  Widget buildNavBarItem(String icon) {
    return SvgPicture.asset(icon);
  }
}
