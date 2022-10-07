import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/profile_screen/profile_screen_seven.dart';

import '../utils/colors.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

class ProfileScreenSix extends StatefulWidget {
  const ProfileScreenSix({Key? key}) : super(key: key);

  @override
  State<ProfileScreenSix> createState() => _ProfileScreenSixState();
}

class _ProfileScreenSixState extends State<ProfileScreenSix> {
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
                'Choose your interests and\nactivities',
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
            MultiSelectContainer(
                itemsDecoration: MultiSelectDecorations(
                    selectedDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xff41C8CD))),
                textStyles: MultiSelectTextStyles(
                    textStyle: TextStyle(
                  fontFamily: 'MuseoSans-Bold.otf',
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: ConstColors.textColor,
                )),
                items: [
                  MultiSelectCard(value: 'Dart', label: 'Dart'),
                  MultiSelectCard(value: 'Python', label: 'Python'),
                  MultiSelectCard(value: 'JavaScript', label: 'JavaScript'),
                  MultiSelectCard(value: 'Java', label: 'Java'),
                  MultiSelectCard(value: 'C#', label: 'C#'),
                  MultiSelectCard(value: 'C++', label: 'C++'),
                  MultiSelectCard(value: 'Go Lang', label: 'Go Lang'),
                  MultiSelectCard(value: 'Swift', label: 'Swift'),
                  MultiSelectCard(value: 'PHP', label: 'PHP'),
                  MultiSelectCard(value: 'Kotlin', label: 'Kotlin')
                ],
                onChange: (allSelectedItems, selectedItem) {}),
            const SizedBox(
              height: 104,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(ProfileScreenSeven());



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
