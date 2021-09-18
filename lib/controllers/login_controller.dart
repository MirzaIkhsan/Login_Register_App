import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.put(LoginController());

  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  String get email => this.emailC.text;
  String get password => this.passwordC.text;

  set email(String value) => this.emailC.text = value;
  set password(String value) => this.passwordC.text = value;
}
