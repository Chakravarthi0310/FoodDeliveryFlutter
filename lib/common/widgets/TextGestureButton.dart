import 'package:flutter/material.dart';

class TextGestureButton extends StatefulWidget {
  final String title;
  final VoidCallback onpressed;

  const TextGestureButton(
      {Key? key, required this.title, required this.onpressed});

  @override
  State<TextGestureButton> createState() => _TextGestureButtonState();
}

class _TextGestureButtonState extends State<TextGestureButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: widget.onpressed,
          child: Text(
            widget.title,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
