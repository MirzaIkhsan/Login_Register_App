import 'package:flutter/material.dart';

import '../../pages/templates/login_register_template.dart';
import '../../widgets/outline_text_form_field.dart';
import '../../constants/controllers.dart';
import '../../utils/utils.dart';

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
          onSaved: (value) => registerController.username = value!,
          validator: validateTextForm,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Email',
          controller: registerController.emailC,
          onSaved: (value) => registerController.email = value!,
          validator: validateEmail,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Password',
          isObsecure: true,
          controller: registerController.passwordC,
          onSaved: (value) => registerController.password = value!,
          validator: validatePassword,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Confirmation',
          isObsecure: true,
          controller: registerController.confirmationC,
          onSaved: (value) => registerController.confirmation = value!,
          validator: registerController.validateConfirmationPasswd,
        ),
      ],
      onSubmit: registerController.onSubmit,
    );
  }
}
