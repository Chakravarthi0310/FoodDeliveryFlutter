import 'package:flutter/material.dart';

class GestureButton extends StatefulWidget {
  const GestureButton({Key? key, required this.label, required this.ontap});

  final String label;
  final VoidCallback ontap;

  @override
  State<GestureButton> createState() => _GestureButtonState();
}

class _GestureButtonState extends State<GestureButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Text(
        widget.label,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
