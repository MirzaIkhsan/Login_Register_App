import 'package:flutter/material.dart';

import '../../constants/palletes.dart';
import '../../widgets/already_have_account.dart';
import '../../widgets/custom_text_button.dart';

class LoginRegisterTemplate extends StatelessWidget {
  final String page;
  final GlobalKey<FormState> formKey;
  final String imageBackground;
  final List<Widget> children;
  final void Function()? onSubmit;

  const LoginRegisterTemplate({
    Key? key,
    this.page = 'Login',
    required this.formKey,
    required this.imageBackground,
    required this.children,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(this.imageBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: size.width, height: 60),
                Center(
                  child: Text(
                    'Vibez',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: blueColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    top: 40,
                    bottom: 20,
                  ),
                  child: Text(
                    this.page == 'Login'
                        ? 'Login to your Account'
                        : 'Create your Account',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Form(
                  key: this.formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(children: this.children),
                  ),
                ),
                SizedBox(height: 45),
                Center(
                  child: CustomTextButton(
                    text: this.page,
                    onPressed: this.onSubmit,
                  ),
                ),
                SizedBox(height: 20),
                AlreadyHaveAccount(hasAccount: this.page != 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
