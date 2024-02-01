import 'package:flutter/material.dart';

class TopTitle extends StatefulWidget {
  final String Title;
  const TopTitle({Key? key, required this.Title});

  @override
  State<TopTitle> createState() => _TopTitleState();
}

class _TopTitleState extends State<TopTitle> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        widget.Title,
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
