import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/screens/ProfilePage.dart';

class ProfileIcon extends StatefulWidget {
  final int size = 50;
  const ProfileIcon({super.key, size});

  @override
  State<ProfileIcon> createState() => _ProfileIconState();
}

class _ProfileIconState extends State<ProfileIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/Iconbg.png',
              height: 50,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/ProfileIcon.png',
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
