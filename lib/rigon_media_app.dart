import 'package:rigon/src/core/constants/packages.dart';

class RigoMediaApp extends StatelessWidget {
  const RigoMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, _) => MultiBlocProvider(
              providers: [BlocProvider(create: (context) => RouteCubit())],
              child: MaterialApp(
                  theme: ThemeData(fontFamily: 'Urbanist'),
                  debugShowCheckedModeBanner: false,
                  home: const LoginView()),
            ));
  }
}
