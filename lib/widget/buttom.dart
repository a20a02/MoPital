import 'package:flutter/material.dart';

import '../constants.dart';

class MyButtom extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;
  const MyButtom({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      textColor: Colors.white,
      minWidth: MediaQuery.of(context).size.width * 0.4,
      height: 45,
      color: color,
      onPressed: onPressed,
      child: Text(
        text,
        style: middleFont,
      ),
    );
  }
}
