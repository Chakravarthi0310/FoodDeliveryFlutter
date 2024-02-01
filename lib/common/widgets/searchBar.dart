import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: secondaryColor,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Image.asset(
              'assets/images/SearchIcon.png',
              height: 10,
              width: 30,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
            child: Image.asset(
              'assets/images/microphoneIcon.png',
              height: 10,
              width: 20,
            ),
          ),
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 20)),
    );
  }
}
