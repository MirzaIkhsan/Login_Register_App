import 'package:flutter/material.dart';
import 'package:login_register_app/services/user_services.dart';

import '../../constants/controllers.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/outline_text_form_field.dart';

class ChangeProfilePage extends StatelessWidget {
  const ChangeProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _usernameController = TextEditingController();

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
                key: _formKey,
                child: Column(
                  children: [
                    OutlineTextFormField(
                      hintText: 'Name',
                      controller: _nameController,
                      onSaved: (value) {
                        if (value != null && value.isNotEmpty) {
                          _nameController.text = value;
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    OutlineTextFormField(
                      hintText: 'Username',
                      controller: _usernameController,
                      onSaved: (value) {
                        if (value != null && value.isNotEmpty) {
                          _usernameController.text = value;
                        }
                      },
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
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  userController.user = userController.user.copyWith(
                    name: _nameController.text,
                    username: _usernameController.text,
                  );
                  UserService.changeProfile(userController.user);
                }
              },
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
