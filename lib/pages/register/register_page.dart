import 'package:flutter/material.dart';
import 'package:login_register_app/constants/controllers.dart';

import '../../pages/templates/login_register_template.dart';
import '../../widgets/outline_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginRegisterTemplate(
      formKey: registerController.key,
      page: 'Register',
      imageBackground: 'assets/background/login.png',
      children: [
        OutlineTextFormField(
          hintText: 'Username',
          controller: registerController.usernameC,
          // onSaved: (value) => registerController.username = value!,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Email',
          controller: registerController.emailC,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Password',
          isObsecure: true,
          controller: registerController.passwordC,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Confirmation',
          isObsecure: true,
          controller: registerController.confirmationC,
        ),
      ],
      onSubmit: registerController.onSubmit,
    );
  }
}
