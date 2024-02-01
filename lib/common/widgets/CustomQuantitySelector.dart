import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';

// ignore: must_be_immutable
class QuantitySelector extends StatefulWidget {
  int quantity = 1;
  QuantitySelector({Key? key, required this.quantity});
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: fourthColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: decrement,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: fourthColor,
              ),
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 16),
          Text(
            quantity.toString(),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(width: 16),
          GestureDetector(
            onTap: increment,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: fourthColor,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
