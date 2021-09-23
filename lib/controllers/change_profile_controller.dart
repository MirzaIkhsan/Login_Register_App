import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../services/user_services.dart';

class ChangeProfileController extends GetxController {
  late GlobalKey<FormState> key = GlobalKey<FormState>();
  late TextEditingController nameC = TextEditingController();
  late TextEditingController usernameC = TextEditingController();

  String get name => nameC.text;
  String get username => usernameC.text;

  set name(String name) => nameC.text = name;
  set username(String username) => usernameC.text = username;

  void onSubmit() {
    this.key.currentState!.save();
    userController.user =
        userController.user.copyWith(name: name, username: username);
    UserService.changeProfile(userController.user);
  }
}
