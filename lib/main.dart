import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:travelpals/routes/HomeBinding.dart';
import 'package:travelpals/routes/routes.dart';
import 'package:travelpals/splash_screen/splash_screen.dart';
import 'package:travelpals/trips_screen/local_screen.dart';
import 'package:travelpals/trips_screen/trips_navigation_screen.dart';
import 'package:travelpals/trips_screen/trips_screen.dart';
import 'package:travelpals/user_profile/ProfileDetailPage.dart';

import 'package:travelpals/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: ConstColors.PrimaryGradientColorTwo,
            ),
            //initialRoute: Routes.home,
            getPages: Screen.pages,
            initialBinding: HomeBinding(),
            home: TripsScreenBottomNavigation(),
          );
        });
  }
}
