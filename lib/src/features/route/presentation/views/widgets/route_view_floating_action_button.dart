import 'package:flutter/cupertino.dart';
import 'package:rigon/src/core/constants/packages.dart';

class RouteViewFloatingActionButton extends StatelessWidget {
  const RouteViewFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteCubit, RouteState>(
      builder: (BuildContext context, RouteState state) => GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                      child: Column(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Text('Choose Date',
                                  style: Styles.textSize16
                                      .copyWith(fontWeight: FontWeight.w700)),
                              const Spacer(),
                              IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () => Navigator.pop(context))
                            ])),
                    const Divider(),
                    const CustomVerticalSizedBox(15),
                    Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 36.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) =>
                                Text(symbols[index], style: Styles.textSize16),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const CustomHorizontalSizedBox(18),
                            itemCount: symbols.length)),
                    const RouteViewTableCalendar(),
                    const CustomVerticalSizedBox(13),
                    const Divider(),
                    Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: darkClr,
                                foregroundColor: whiteClr,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                minimumSize: Size(double.infinity, 56.h)),
                            onPressed: () {},
                            child: Text('Continue',
                                style: Styles.textSize16
                                    .copyWith(color: whiteClr))))
                  ]));
                });
          },
          child: Padding(
              padding: EdgeInsets.only(bottom: 20.h),
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
                      ]),
                  child: const Icon(CupertinoIcons.add,
                      size: 28, color: whiteClr)))),
    );
  }
}

List<String> symbols = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
