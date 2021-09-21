import 'package:get/get.dart';

import '../models/user.dart';

class UserController extends GetxController {
  static UserController instance = Get.put(UserController());

  Rx<User> _user = User().obs;

  User get user => this._user.value;
  String? get name => this.user.name;
  String? get username => this.user.username;
  String? get email => this.user.email;
  String? get profilePhotoUrl => this.user.profilePhotoUrl;

  set user(User user) => this._user.value = user;
  set name(String? name) => this._user.value.name = name;
  // set username(String username) => this._user.value.username = username;
  // set profilePhotoUrl(String url) => this._user.value.profilePhotoUrl = url;
}
