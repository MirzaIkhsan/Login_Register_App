import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController instance = Get.put(RegisterController());

  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController usernameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController confirmationC = TextEditingController();

  String get username => this.usernameC.text;
  String get email => this.emailC.text;
  String get password => this.passwordC.text;
  String get confirmation => this.confirmationC.text;

  set username(String value) => this.usernameC.text = value;
  set email(String value) => this.emailC.text = value;
  set password(String value) => this.passwordC.text = value;
  set confirmation(String value) => this.confirmationC.text = value;

  void onSubmit() {
    this.key.currentState!.save();
  }
}
