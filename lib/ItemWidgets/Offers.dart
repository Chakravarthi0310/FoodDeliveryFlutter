import 'package:flutter/material.dart';

List<Widget> Offers = [
  Image.asset('assets/images/Offer.png'),
  Image.asset('assets/images/Offer.png'),
  Image.asset('assets/images/Offer.png'),
  Image.asset('assets/images/Offer.png')
];

List<Widget> FoodOffers = [
  Stack(
    children: [
      Image.asset(
        'assets/images/Offer2.png',
        fit: BoxFit.cover,
        width: 400,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/Pizza 3(Offer).png',
            height: 200,
          ),
        ],
      )
    ],
  )
];
