import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_app/services/user_services.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.put(LoginController());

  late GlobalKey<FormState> key = GlobalKey<FormState>();
  late TextEditingController emailC = TextEditingController();
  late TextEditingController passwordC = TextEditingController();

  String get email => this.emailC.text;
  String get password => this.passwordC.text;

  set email(String value) => this.emailC.text = value;
  set password(String value) => this.passwordC.text = value;

  void onSubmit() async {
    if (this.key.currentState!.validate()) {
      this.key.currentState!.save();
      final response = await UserService.login(email, password);

      if (response.value != null) {
        //// Todo: Goto the next page
      } else {
        //// Todo: Give warn
      }
    }
  }
}
