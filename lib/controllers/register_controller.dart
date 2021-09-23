import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_app/constants/controllers.dart';

import '../pages/profile/profile_page.dart';
import '../services/user_services.dart';

class RegisterController extends GetxController {
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

  String? validateConfirmationPasswd(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field must be filled';
    } else if (value != this.confirmation) {
      return 'The password isn\'t match';
    }
    return null;
  }

  void onSubmit() async {
    if (this.key.currentState!.validate()) {
      this.key.currentState!.save();
      final response = await UserService.register(username, email, password);

      if (response.value != null) {
        userController.user = response.value!;
        Get.to(() => ProfilePage());
      } else {
        //// Todo: Give warn
      }
    }
  }
}
