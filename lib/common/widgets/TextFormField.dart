import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';

class TfField extends StatefulWidget {
  final String hintText;
  final TextStyle hintStyle;
  final bool obscureText;

  const TfField({
    Key? key,
    required this.hintText,
    this.hintStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<TfField> createState() => _TfFieldState();
}

class _TfFieldState extends State<TfField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        filled: true,
        fillColor: tertiaryColor,
      ),
    );
  }
}
