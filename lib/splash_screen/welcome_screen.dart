import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travelpals/utils/colors.dart';

import '../signin_screen/signin_screen.dart';

class WelComeScreen extends StatefulWidget {
  const WelComeScreen({Key? key}) : super(key: key);

  @override
  State<WelComeScreen> createState() => _WelComeScreenState();
}

class _WelComeScreenState extends State<WelComeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/ic_welcome.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text('A community for travelers around the World',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ConstColors.SimpleTextColor,
                    fontSize: 28,
                    fontFamily: 'MuseoSans-Bold.otf',
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 27,
              ),
              const Text(
                  'At vero eos et accusamus et iusto odio \ndignissimos ducimus qui blanditiis\npraesentium voluptatum.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ConstColors.SubTextColor,
                    fontSize: 14,
                    fontFamily: 'MuseoSans-Regular.otf',
                  )),
              const SizedBox(
                height: 26,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ConstColors.btnColor,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(16.0)), // Background color
                  ),
                  onPressed: () {
                    Get.to(SignInScreen());
                  },
                  icon: const Icon(Icons.arrow_right_alt),
                  label: Text(
                    'Next'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'MuseoSans-Regular.otf',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}