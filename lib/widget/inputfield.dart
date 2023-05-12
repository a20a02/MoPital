import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: must_be_immutable
class InputField extends StatefulWidget {
  final String title;
  final Color color;
  final Color underlinecolor;
  final double hight;
  final TextInputType keyboardType;
  TextEditingController? controller;

  InputField({
    super.key,
    required this.title,
    required this.color,
    required this.hight,
    required this.underlinecolor,
    required this.keyboardType,
    this.controller,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.title,
          style: middleFont,
        ),
        const SizedBox(height: 12),
        Container(
          height: widget.hight,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextField(
            onChanged: (value) {
              setState(() {
                widget.controller?.text = value;
              });
            },
            textInputAction: TextInputAction.next,
            keyboardType: widget.keyboardType,
            style: smallFont,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: widget.underlinecolor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: widget.underlinecolor),
              ),
            ),
            cursorColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
