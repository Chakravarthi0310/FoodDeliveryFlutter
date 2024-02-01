import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';
import 'package:fooddeliveryappmodified/globalVariables/GlobalVariables.dart';

List<Widget> user_addresses = [
  ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          backgroundColor: widgetBackgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: fontSizemd, color: Colors.black),
              ),
              Text(
                Addresses[0],
                style: TextStyle(fontSize: fontSizeSm, color: Colors.grey),
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          )
        ],
      )),
  ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          backgroundColor: widgetBackgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.work_outline,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Office',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: fontSizemd, color: Colors.black),
              ),
              Text(
                Addresses[1],
                style: TextStyle(fontSize: fontSizeSm, color: Colors.grey),
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          )
        ],
      ))
];
