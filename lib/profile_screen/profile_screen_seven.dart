import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelpals/custom_widgets/radio_button/custom_radios.dart';

import '../utils/colors.dart';

class ProfileScreenSeven extends StatefulWidget {
  const ProfileScreenSeven({Key? key}) : super(key: key);

  @override
  State<ProfileScreenSeven> createState() => _ProfileScreenSevenState();
}

class _ProfileScreenSevenState extends State<ProfileScreenSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Create Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: ConstColors.SimpleTextColor,
            fontFamily: 'MuseoSans-Bold.otf',
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ConstColors.backArrowColor),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  'Do you have a passport?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ConstColors.SimpleTextColor,
                    fontSize: 24,
                    fontFamily: 'MuseoSans-Regular-300.otf',
                  ),
                ),
              ),
              SizedBox(height: 32),
              CustomRadioButtons(
                selectedRadioButton: (val) {
                  print(val);
                },
                listOfRadioButtons: ['Yes', 'No'],
              ),
              SizedBox(height: 54),
              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  'Covid -19 – Do you prefer to\ntravel with someone that’s\nvaccinated?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ConstColors.SimpleTextColor,
                    fontSize: 24,
                    fontFamily: 'MuseoSans-Regular-300.otf',
                  ),
                ),
              ),
              SizedBox(height: 36),
              CustomRadioButtons(
                selectedRadioButton: (val) {
                  print(val);
                },
                listOfRadioButtons: ['Yes', 'Not Applicable'],
              ),
              SizedBox(height: 36),
              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  'Do you smoke?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ConstColors.SimpleTextColor,
                    fontSize: 24,
                    fontFamily: 'MuseoSans-Regular-300.otf',
                  ),
                ),
              ),
              SizedBox(height: 36),
              CustomRadioButtons(
                selectedRadioButton: (val) {
                  print(val);
                },
                listOfRadioButtons: ['Yes', 'No', 'Socially'],
              ),
              SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {


                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColors.btnColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(26.0)), // Background color
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'MuseoSans-SemiBold.otf',
                          ),
                        ),
                      )),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
