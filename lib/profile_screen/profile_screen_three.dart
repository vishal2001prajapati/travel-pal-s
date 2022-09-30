import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travelpals/profile_screen/profile_screen_four.dart';

import '../custom_widgets/radio_button/custom_radios.dart';
import '../utils/colors.dart';

class ProfileScreenThree extends StatefulWidget {
  const ProfileScreenThree({Key? key}) : super(key: key);

  @override
  State<ProfileScreenThree> createState() => _ProfileScreenThreeState();
}

class _ProfileScreenThreeState extends State<ProfileScreenThree> {
  static double lowerValue = 1.0;
  static double upperValue = 100.0;
  RangeValues rangeValues = RangeValues(lowerValue, upperValue);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 26, left: 26),
              child: Text(
                'How do you identify?',
                style: TextStyle(
                  fontSize: 24,
                  color: ConstColors.SimpleTextColor,
                  fontFamily: 'MuseoSans-SemiBold.otf',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                'Select your gender',
                style: TextStyle(
                  color: ConstColors.SimpleTextColor,
                  fontSize: 16,
                  fontFamily: 'MuseoSans-Regular-300.otf',
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomRadioButtons(
              selectedRadioButton: (val) {
                print(val);
              },
              listOfRadioButtons: ['Male', 'Female', 'Non-binary'],
            ),
            const SizedBox(
              height: 58,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                'Age group range of people\nyou want to meet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.SimpleTextColor,
                  fontSize: 24,
                  fontFamily: 'MuseoSans-Regular-300.otf',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Range Container
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: 174,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                  border: Border.all(width: 2, color: Color(0xffD9D9D9)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 23, top: 17),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Age Range',
                          style: TextStyle(
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 17, right: 22),
                          child: Text(
                            '${rangeValues.start.toStringAsFixed(0)} - ${rangeValues.end.toStringAsFixed(0)}',
                            style: TextStyle(
                                fontFamily: 'MuseoSans-SemiBold.otf',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 22),
                          child: Text(
                            '      Years',
                            style: TextStyle(
                                fontFamily: 'MuseoSans-SemiBold.otf',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: ConstColors.inputTextColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Expanded(
                      child: RangeSlider(
                          min: lowerValue,
                          max: upperValue,
                          activeColor: Color(0xff41C8CD),
                          inactiveColor: Color(0xffD9D9D9),
                          values: rangeValues,
                          onChanged: (val) {
                            print('Range Value is:-->$val');
                            setState(() {
                              rangeValues = val;
                            });
                          }),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(ProfileScreenFour());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ConstColors.btnColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              26.0)), // Background color
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        'Next',
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
    );
  }
}
