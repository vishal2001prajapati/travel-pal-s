import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../custom_widgets/radio_button/custom_radios.dart';
import '../otp_screen/verification_screen.dart';
import '../utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double _currentValue = 0;
  bool? _checkBox = false;

  // dropdown list
  final _dateController = TextEditingController();
  List _items = [];
  List _itemLanguages = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('json/country.json');
    final data = await json.decode(response);
    setState(() {
      for (var i in data as List) {
        /* print('json data is:-->${i}');*/
        _items.add(i['name'] as String);
      }
      print('CountryName:->${_items} ');
    });
  }

  Future<void> readJsonLanguages() async {
    final String response = await rootBundle.loadString('json/languages.json');
    final data = await json.decode(response);
    setState(() {
      for (var i in data as List) {
        /* print('json data is:-->${i}');*/
        _itemLanguages.add(i['name'] as String);
      }
      print('LanguagesNames:->${_itemLanguages} ');
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
    readJsonLanguages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Create your account',
          style: TextStyle(
            fontSize: 24,
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
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 28, right: 20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Enter your personal Information to \nconnect with us',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'MuseoSans-Regular.otf',
                            color: ConstColors.SimpleTextColor),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Jacob',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          /* focusColor: Colors.amberAccent,*/

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          /* focusColor: Colors.amberAccent,*/

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          /* focusColor: Colors.amberAccent,*/

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26.0)),
                            //<-- SEE HERE
                            borderSide: BorderSide(
                                color: ConstColors.inputTextBackGroundColor,
                                width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ConstColors.inputTextBackGroundColor,
                                width: 2),
                          ),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                        ),
                        isExpanded: true,
                        items: _items
                            .map((e) => DropdownMenuItem(
                                value: e, child: Text(e.toString())))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            // _selecteVal = val as String;
                          });
                        },
                        value: _items[0],
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        onTap: () async {
                          DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1888),
                            lastDate: DateTime(2111),
                          );
                          // if cancel is null
                          String dateFormaet =
                              DateFormat('dd-MM-yyyy').format(newDate!);
                          if (newDate == null) return;
                          // if ok then set dateTime
                          setState(() => _dateController.text = dateFormaet);
                        },
                        controller: _dateController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.none,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Date of Birth',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          /* focusColor: Colors.amberAccent,*/

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 24, bottom: 16, top: 16),
                          isDense: true,
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                              color: ConstColors.inputTextColor),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          labelStyle:
                              TextStyle(color: ConstColors.inputTextColor),
                          /* focusColor: Colors.amberAccent,*/

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstColors.inputTextBackGroundColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0))),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26.0)),
                            borderSide: BorderSide(
                                color: ConstColors.inputTextBackGroundColor,
                                width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ConstColors.inputTextBackGroundColor,
                                width: 2),
                          ),
                          filled: true,
                          fillColor: ConstColors.inputTextBackGroundColor,
                        ),
                        isExpanded: true,
                        items: _itemLanguages
                            .map((e) => DropdownMenuItem(
                                value: e, child: Text(e.toString())))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            // _selecteVal = val as String;
                          });
                        },
                        value: _itemLanguages[0],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Select Distance Range',
                        style: TextStyle(
                          color: Color(0xff8F9C9C),
                          fontFamily: 'MuseoSans-Regular.otf',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Slider(
                          value: _currentValue,
                          label: _currentValue.toString(),
                          activeColor: ConstColors.PrimaryGradientColorTwo,
                          inactiveColor: ConstColors.inputTextBackGroundColor,
                          min: 0,
                          max: 100,
                          onChanged: (value) {
                            setState(() {
                              _currentValue = value;
                              print('currentvalue${_currentValue}');
                            });
                          }),
                      const SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('0 Miles',
                              style: TextStyle(
                                color: Color(0xff8F9C9C),
                                fontFamily: 'MuseoSans-Regular.otf',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              )),
                          Text('50 Miles',
                              style: TextStyle(
                                color: Color(0xff8F9C9C),
                                fontFamily: 'MuseoSans-Regular.otf',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              )),
                          Text('100 Miles',
                              style: TextStyle(
                                color: Color(0xff8F9C9C),
                                fontFamily: 'MuseoSans-Regular.otf',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                      const SizedBox(height: 28),
                      CheckboxListTile(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        title: RichText(
                          text: TextSpan(
                            text: 'I agree to the ',
                            style: const TextStyle(
                                fontSize: 14.0,
                                color: ConstColors.inputTextColor),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'terms and condition',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {},
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff000000),
                                      fontSize: 14.0)),
                            ],
                          ),
                        ),
                        value: _checkBox,
                        onChanged: (val) {
                          setState(() {
                            _checkBox = val;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              bottomSheet();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ConstColors.btnColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      26.0)), // Background color
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 16, bottom: 16),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'MuseoSans-SemiBold.otf',
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: RichText(
                            text: TextSpan(
                              text: 'Already a member?',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: ConstColors.inputTextColor),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Sign In',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => {Get.back()},
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff334155),
                                        fontSize: 14.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> bottomSheet() {
    return Get.bottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),

        /* borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight:  Radius.circular(20.0))*/
      ),
      Container(
          height: 279,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 42,
              ),
              const Text('Add Social Security Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ConstColors.SimpleTextColor,
                    fontSize: 24,
                    fontFamily: 'MuseoSans-Bold.otf',
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 19),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 24, bottom: 16, top: 16),
                    isDense: true,
                    hintText: 'Add Code',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'MuseoSans-SemiBold.otf',
                        color: ConstColors.inputTextColor),
                    filled: true,
                    fillColor: ConstColors.inputTextBackGroundColor,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ConstColors.inputTextBackGroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(35.0))),
                    labelStyle: TextStyle(color: ConstColors.inputTextColor),
                    /* focusColor: Colors.amberAccent,*/

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ConstColors.inputTextBackGroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(35.0))),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 19),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        verificationCode();
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
                          'Done'.toUpperCase(),
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
          )),
    );
  }

  Future<void> verificationCode() {
    return Get.bottomSheet(Container(
      height: 348,
      color: Colors.white,
      child: Column(children: [
        const SizedBox(
          height: 42,
        ),
        const Text('Verify your account',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ConstColors.SimpleTextColor,
              fontSize: 24,
              fontFamily: 'MuseoSans-Bold.otf',
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 29,
        ),
        Expanded(
          child: CustomRadioButtons(
            selectedRadioButton: (val) {
              print(val);
            },
            listOfRadioButtons: ['Verify via email', 'Verify via phone'],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 19, bottom: 20),
          child: Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(MyApp());
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
                    'Send Verfication Code',
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
      ]),
    ));
  }
}
