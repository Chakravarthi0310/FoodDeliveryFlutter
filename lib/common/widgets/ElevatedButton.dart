import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';

class ElevButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  Color textColor;
  Color bg;

  ElevButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.textColor = Colors.black,
    this.bg = fourthColor,
  });

  @override
  State<ElevButton> createState() => _ElevButtonState();
}

class _ElevButtonState extends State<ElevButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Container(
        width: double.infinity,
        child: Text(
          widget.label,
          style: TextStyle(
            color: widget.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
