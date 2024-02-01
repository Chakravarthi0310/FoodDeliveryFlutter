import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';

class ElevButton extends StatefulWidget {
  final String label;
  final TextStyle labelstyle;
  final VoidCallback onPressed;

  const ElevButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.labelstyle = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
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
        backgroundColor: fourthColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Container(
        width: double.infinity,
        child: Text(
          widget.label,
          style: widget.labelstyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
