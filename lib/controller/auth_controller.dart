import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController referCode = TextEditingController();
  
  @override
  void onInit() {
    debugPrint('authcontroller is on init');
    super.onInit();
  }
}
