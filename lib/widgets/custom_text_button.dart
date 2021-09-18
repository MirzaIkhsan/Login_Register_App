import 'package:flutter/material.dart';

import '../constants/palletes.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 50,
      child: MaterialButton(
        onPressed: this.onPressed,
        elevation: 5,
        color: blueColor,
        textColor: Colors.white,
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
