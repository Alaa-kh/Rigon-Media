import 'package:rigon/src/core/constants/packages.dart';

class RigoMediaApp extends StatelessWidget {
  const RigoMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        designSize: Size(390, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: LoginView()));
  }
}
