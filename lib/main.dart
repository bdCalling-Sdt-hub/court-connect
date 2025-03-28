import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_themes/app_themes.dart';
import 'core/app_routes/app_routes.dart';
import 'core/widgets/no_inter_net_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) =>  MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: Themes().lightTheme,
        darkTheme: Themes().lightTheme,
        routeInformationParser: AppRoutes.goRouter.routeInformationParser,
        routeInformationProvider: AppRoutes.goRouter.routeInformationProvider,
        routerDelegate: AppRoutes.goRouter.routerDelegate,
        builder: (context, child) {
          return Scaffold(body: NoInterNetScreen(child: child!));
        },
      ),
    );
  }
}
