import 'package:flutter/material.dart';
import 'package:login_register_app/constants/controllers.dart';

import '../../pages/templates/login_register_template.dart';
import '../../widgets/outline_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginRegisterTemplate(
      formKey: loginController.key,
      page: 'Login',
      imageBackground: 'assets/background/login.png',
      children: [
        OutlineTextFormField(
          hintText: 'Email',
          controller: loginController.emailC,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Password',
          controller: loginController.passwordC,
        ),
      ],
      onSubmit: () {},
    );
  }
}
