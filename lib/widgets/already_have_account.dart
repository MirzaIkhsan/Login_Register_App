import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_app/pages/login/login_page.dart';
import 'package:login_register_app/pages/register/register_page.dart';

import '../constants/palletes.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final bool hasAccount;
  final void Function()? onTap;

  const AlreadyHaveAccount({
    Key? key,
    this.hasAccount = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          !this.hasAccount
              ? 'Don\'t have an account? '
              : 'Already have an account? ',
        ),
        GestureDetector(
          onTap: !hasAccount
              ? () => Get.off(() => RegisterPage())
              : () => Get.off(() => LoginPage()),
          child: Text(
            !this.hasAccount ? 'Register' : 'Login',
            style: TextStyle(
              color: blueColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
