import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travelpals/profile_screen/profile_screen_three.dart';

import '../utils/colors.dart';

class ProfileScreenOne extends StatefulWidget {
  const ProfileScreenOne({Key? key}) : super(key: key);

  @override
  State<ProfileScreenOne> createState() => _ProfileScreenOneState();
}

class _ProfileScreenOneState extends State<ProfileScreenOne> {
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
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 29, top: 30),
                  child: Text(
                    'Personal information',
                    style: TextStyle(
                      fontSize: 24,
                      color: ConstColors.SimpleTextColor,
                      fontFamily: 'MuseoSans-SemiBold.otf',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Johnathan Doe',
                        style: TextStyle(
                            fontFamily: 'MuseoSans-Bold.otf',
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'johnathan@gmail.com',
                        style: TextStyle(
                            fontFamily: 'MuseoSans-Bold.otf',
                            fontSize: 12,
                            color: ConstColors.textColor,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Icon(Icons.image, size: 200),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Add Profile Photo or Video\n(We recommended a video)',
                        style: TextStyle(
                            fontFamily: 'MuseoSans-Bold.otf',
                            fontSize: 12,
                            color: ConstColors.textColor,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 84,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Bio',
                    style: TextStyle(
                      fontSize: 16,
                      color: ConstColors.SimpleTextColor,
                      fontFamily: 'MuseoSans-SemiBold.otf',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 27),
                  child: TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 24, bottom: 16, top: 16),
                      isDense: true,
                      hintText: 'Enter your biography (Upto 400 characters)',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'MuseoSans-SemiBold.otf',
                          color: ConstColors.inputTextColor),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstColors.inputTextBackGroundColor),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      labelStyle: TextStyle(color: ConstColors.inputTextColor),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstColors.inputTextBackGroundColor),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 41,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(ProfileScreenThree());
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
          ))
        ],
      ),
    );
  }
}
