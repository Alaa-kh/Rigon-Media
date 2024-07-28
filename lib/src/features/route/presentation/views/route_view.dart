import 'package:rigon/src/core/constants/packages.dart';

class RouteView extends StatelessWidget {
  const RouteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteCubit, RouteState>(
        builder: (BuildContext context, RouteState state) => Scaffold(
            body: IndexedStack(
                index: context.read<RouteCubit>().currntIndex,
                children: const [
                  ProjectView(),
                  CalendarView(),
                  ProjectView(),
                  CalendarView()
                ]),
            bottomNavigationBar: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: greyClr,
                      offset: Offset(0, 6),
                      blurRadius: 13,
                      spreadRadius: 0)
                ]),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        currentIndex: context.read<RouteCubit>().currntIndex,
                        onTap: (i) => context.read<RouteCubit>().changeIndex(i),
                        backgroundColor: whiteClr,
                        elevation: 5,
                        selectedItemColor: darkClr,
                        unselectedItemColor: greyClr,
                        items: [
                          BottomNavigationBarItem(
                              label: '',
                              icon: buildNavBarItem(
                                IconsAssets.categoryIcon,
                                context,
                                0,
                              )),
                          BottomNavigationBarItem(
                              label: '',
                              icon: buildNavBarItem(
                                IconsAssets.folderIcon,
                                context,
                                1,
                              )),
                          BottomNavigationBarItem(
                              label: '',
                              icon: buildNavBarItem(
                                  IconsAssets.calendarIcon, context, 2)),
                          BottomNavigationBarItem(
                              label: '',
                              icon: buildNavBarItem(
                                IconsAssets.memoji2Icon,
                                context,
                                3,
                              ))
                        ]))),
            floatingActionButton: const RouteViewFloatingActionButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  buildNavBarItem(String icon, BuildContext context,int index) {
    return SvgPicture.asset(icon,
        colorFilter: ColorFilter.mode(
            context.read<RouteCubit>().currntIndex == index ? darkClr : greyClr,
            BlendMode.modulate));
  }
}
