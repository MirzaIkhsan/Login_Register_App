import 'package:flutter/material.dart';
import 'package:login_register_app/constants/controllers.dart';
import 'package:login_register_app/models/user.dart';
import 'package:login_register_app/widgets/custom_text_button.dart';

class ChangeProfilePage extends StatelessWidget {
  ChangeProfilePage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name can\'t be empty';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        if (value != null) {
                          print('hello');
                          userController.user = User(name: value);
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
                if (this._formKey.currentState!.validate()) {
                  this._formKey.currentState!.save();
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
