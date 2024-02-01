import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: Image.asset('assets/images/OrderPlaced.png')),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Track Your Order",
                  style: TextStyle(fontSize: fontSizeLg, color: fourthColor),
                )),
            Text(
              "Your Order has been placed!",
              style: TextStyle(fontSize: fontSizeLg, color: fourthColor),
            ),
            Text(
              "You will recieve an email shortly",
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
