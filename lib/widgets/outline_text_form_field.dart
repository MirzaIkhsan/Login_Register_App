import 'package:flutter/material.dart';

class OutlineTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isObsecure;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const OutlineTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.isObsecure = false,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.black45,
      child: TextFormField(
        controller: this.controller,
        obscureText: this.isObsecure,
        decoration: InputDecoration(
          hintText: this.hintText,
          border: OutlineInputBorder(),
          isDense: true,
        ),
        validator: this.validator,
        onSaved: this.onSaved,
      ),
    );
  }
}
