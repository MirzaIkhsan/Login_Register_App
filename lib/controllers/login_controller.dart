import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../pages/profile/profile_page.dart';
import '../services/user_services.dart';

class LoginController extends GetxController {
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
        userController.user = response.value!;
        Get.off(() => ProfilePage());
      } else {
        //// Todo: Give warn
      }
    }
  }
}
