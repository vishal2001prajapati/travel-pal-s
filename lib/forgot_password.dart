import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelpals/signin_screen/Login_controller.dart';
import 'package:travelpals/utils/colors.dart';

class ForgotPassword extends StatefulWidget {
   ForgotPassword({Key? key}) : super(key: key);


  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  LoginController loginController = LoginController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 5, right: 10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          )
        ],
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 20,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 10),
            child: Text(
              'We will send password reset link to your\nemail ID to reset your password. please enter\nyour register email ID',
            style: TextStyle(
              fontSize: 16.sp,
              color: ConstColors.SimpleTextColor,
              fontFamily: 'MuseoSans-Regular.otf'
            ),

            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 19),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: loginController.loginFormKey,
              child: TextFormField(
                controller: loginController.emailController,
                onSaved: (value) {
                  loginController.email = value!;
                },
                validator: (value) {
                  return loginController.validateEmail(value!);
                },
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
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
                      'Okay',
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
    );
  }
}
