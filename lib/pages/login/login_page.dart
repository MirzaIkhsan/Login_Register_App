import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';
import '../../utils/utils.dart';
import '../../pages/templates/login_register_template.dart';
import '../../widgets/outline_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return LoginRegisterTemplate(
      formKey: controller.key,
      page: 'Login',
      imageBackground: 'assets/background/login.png',
      children: [
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
      ],
      onSubmit: controller.onSubmit,
    );
  }
}
