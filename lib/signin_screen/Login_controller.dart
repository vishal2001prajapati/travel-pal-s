import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../trips_screen/trips_navigation_screen.dart';
import '../trips_screen/trips_screen.dart';

class LoginController extends GetxController {
  RxBool isHiddenPassword = true.obs;

  final GlobalKey<FormState> loginFormKey =
      GlobalKey<FormState>(); // import material.dart
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var email = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Provide valid Email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Password must be of 6 character';
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    loginFormKey.currentState!.save();

    Get.snackbar(
      "",
      "Login Successful",
      snackPosition: SnackPosition.BOTTOM,
    );
    Get.to(TripsScreenBottomNavigation());
  }


  Widget togglePassword() {

    return IconButton(
      onPressed: () {
        isHiddenPassword.value = !isHiddenPassword.value;

      },
      icon: isHiddenPassword.value
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }

}
