import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_app/controllers/register_controller.dart';

import '../../pages/templates/login_register_template.dart';
import '../../widgets/outline_text_form_field.dart';
import '../../constants/controllers.dart';
import '../../utils/utils.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());

    return LoginRegisterTemplate(
      formKey: controller.key,
      page: 'Register',
      imageBackground: 'assets/background/login.png',
      children: [
        OutlineTextFormField(
          hintText: 'Username',
          controller: controller.usernameC,
          onSaved: (value) => controller.username = value!,
          validator: validateTextForm,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Email',
          controller: controller.emailC,
          onSaved: (value) => controller.email = value!,
          validator: validateEmail,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Password',
          isObsecure: true,
          controller: controller.passwordC,
          onSaved: (value) => controller.password = value!,
          validator: validatePassword,
        ),
        SizedBox(height: 15),
        OutlineTextFormField(
          hintText: 'Confirmation',
          isObsecure: true,
          controller: controller.confirmationC,
          onSaved: (value) => controller.confirmation = value!,
          validator: controller.validateConfirmationPasswd,
        ),
      ],
      onSubmit: controller.onSubmit,
    );
  }
}
