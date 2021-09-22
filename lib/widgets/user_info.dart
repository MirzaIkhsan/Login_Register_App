import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String title;
  final String text;
  
  const UserInfo({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double textSize = 18;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            width: 150,
            child: Text(this.title, style: TextStyle(fontSize: textSize)),
          ),
          Flexible(
            child: Text(
              this.text,
              style: TextStyle(fontSize: textSize),
            ),
          ),
        ],
      ),
    );
  }
}
