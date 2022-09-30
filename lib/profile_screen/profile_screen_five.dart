import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/profile_screen/profile_screen_six.dart';

import '../custom_widgets/checkbox/custom_checkboxs.dart';
import '../utils/colors.dart';

class ProfileScreenFive extends StatefulWidget {
  const ProfileScreenFive({Key? key}) : super(key: key);

  @override
  State<ProfileScreenFive> createState() => _ProfileScreenFiveState();
}

class _ProfileScreenFiveState extends State<ProfileScreenFive> {
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
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                'What type of travel are you\ninterested in?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.SimpleTextColor,
                  fontSize: 24,
                  fontFamily: 'MuseoSans-Regular-300.otf',
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomCheckBoxButtons(
              selectedRadioButton: (val) {
                print(val);
              },
              listOfRadioButtons: const [
                'Different countries/abroad',
                'In the same country you live in',
                'In same state',
                'Solo travel',
                'Travel with family/kids',
                'Travel or meet others with pets'
              ],
            ),
            const SizedBox(
              height: 104,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(ProfileScreenSix());
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
