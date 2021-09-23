import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text_button.dart';
import '../../widgets/outline_text_form_field.dart';
import '../../controllers/change_profile_controller.dart';

class ChangeProfilePage extends StatelessWidget {
  const ChangeProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChangeProfileController());

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50),

            ////
            //// Create text form field
            ////
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: controller.key,
                child: Column(
                  children: [
                    OutlineTextFormField(
                      hintText: 'Name',
                      controller: controller.nameC,
                      onSaved: (value) => controller.name = value!,
                    ),
                    SizedBox(height: 20),
                    OutlineTextFormField(
                      hintText: 'Username',
                      controller: controller.usernameC,
                      onSaved: (value) => controller.username = value!,
                    ),
                  ],
                ),
              ),
            ),

            Spacer(),

            ////
            //// Create submit button
            ////
            CustomTextButton(
              text: 'Submit',
              onPressed: controller.onSubmit,
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
