import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travelpals/signin_screen/Login_controller.dart';

import '../forgot_password.dart';
import '../signup_screen/signup_screen.dart';
import '../utils/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isHiddenPassword = true;
  LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 50, right: 20),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: loginController.loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Let’s sign you in',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ConstColors.SimpleTextColor,
                              fontSize: 28,
                              fontFamily: 'MuseoSans-Bold.otf',
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text('Welcome back',
                            style: TextStyle(
                              color: ConstColors.SimpleTextColor,
                              fontSize: 24,
                              fontFamily: 'MuseoSans-Regular.otf',
                              fontWeight: FontWeight.normal,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          controller: loginController.emailController,
                          onSaved: (value) {
                            loginController.email = value!;
                          },
                          validator: (value) {
                            return loginController.validateEmail(value!);
                          },
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
                                    color:
                                        ConstColors.inputTextBackGroundColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0))),
                            labelStyle:
                                TextStyle(color: ConstColors.inputTextColor),
                            /* focusColor: Colors.amberAccent,*/

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        ConstColors.inputTextBackGroundColor),
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
                        Obx(
                          () => TextFormField(
                              controller: loginController.passwordController,
                              onSaved: (value) {
                                loginController.password = value!;
                              },
                              validator: (value) {
                                return loginController.validatePassword(value!);
                              },
                              textInputAction: TextInputAction.done,
                              obscureText: loginController.isHiddenPassword.value,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 24, bottom: 16, top: 16),
                                hintText: 'Password',
                                suffixIcon: loginController.togglePassword(),
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'MuseoSans-SemiBold.otf',
                                    color: ConstColors.inputTextColor),
                                filled: true,
                                fillColor: ConstColors.inputTextBackGroundColor,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            ConstColors.inputTextBackGroundColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0))),
                                labelStyle: const TextStyle(
                                    color: ConstColors.inputTextColor),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            ConstColors.inputTextBackGroundColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0))),
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35.0)),
                                ),
                              ),
                            )

                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {
                              Get.to(ForgotPassword());
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: ConstColors.inputTextColor,
                                fontFamily: 'MuseoSans-Regular.otf',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                loginController.checkLogin();
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
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'MuseoSans-SemiBold.otf',
                                  ),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 39,
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                                color: ConstColors.inputTextColor,
                                fontSize: 16,
                                fontFamily: 'MuseoSans-Regular-300.otf'),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Image.asset('images/ic_google.png')),
                            InkWell(
                                onTap: () {},
                                child: Image.asset('images/ic_apple.png')),
                            InkWell(
                                onTap: () {},
                                child: Image.asset('images/ic_facebook.png')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: RichText(
                  text: TextSpan(
                    text: 'Not a member?',
                    style: const TextStyle(
                        fontSize: 14.0, color: ConstColors.inputTextColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' SignUp',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {Get.to(SignUpScreen())},
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
    );
  }

  // password toggle
  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          isHiddenPassword = !isHiddenPassword;
        });
      },
      icon: isHiddenPassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
