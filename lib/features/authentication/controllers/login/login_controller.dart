import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../home_menu.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool rememberMe = false.obs;

  void signIn() {
    // You can implement your sign-in logic here
    // For demonstration purposes, let's just print the username and password
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");

    // Navigate to home menu
    Get.to(() => const HomeMenu());
  }
}
