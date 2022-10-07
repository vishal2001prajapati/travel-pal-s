import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:travelpals/splash_screen/splash_screen.dart';
import 'package:travelpals/trips_screen/local_screen.dart';
import 'package:travelpals/trips_screen/trips_screen.dart';
import 'package:travelpals/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ConstColors.PrimaryGradientColorTwo,
      ),
      home:  TripsScreen(),
    );
  }
}

