import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';
import 'package:fooddeliveryappmodified/common/widgets/CustomQuantitySelector.dart';
import 'package:fooddeliveryappmodified/common/widgets/ElevatedButton.dart';
import 'package:fooddeliveryappmodified/globalVariables/HotelInformation.dart';
import 'package:fooddeliveryappmodified/screens/AddressScreen.dart';

class CheckOutScreen extends StatefulWidget {
  final Items item;
  const CheckOutScreen({Key? key, required this.item});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  Image image = Image.asset(
    'assets/images/Pizza.png',
    height: 200,
    width: 200,
  );
  String name = "Loaded Pizza";
  String type = "Regular";
  double price = 175;
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
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart",
            style: TextStyle(color: fourthColor),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline,
                  color: fourthColor,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: widget.item.image,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.item.itemName}",
                          style: TextStyle(
                              color: fourthColor,
                              fontWeight: FontWeight.bold,
                              fontSize: fontSizeLg),
                        ),
                        Text(
                          "${type}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: fontSizeLg),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Rs.${widget.item.price}",
                          style: TextStyle(
                              color: fourthColor,
                              fontWeight: FontWeight.bold,
                              fontSize: fontSizeLg),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        QuantitySelector(quantity: quantity)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 350,
                  width: 400,
                  color: fourthColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "SubTotal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                            Text(
                              "${widget.item.price}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tax & fees",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                            Text(
                              "${widget.item.price}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Charges",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                            Text(
                              "${widget.item.price}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                            Text(
                              "${widget.item.price * 3}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizemd),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevButton(
                          label: "Voucher Code",
                          onPressed: () {},
                          bg: Colors.white,
                          textColor: fourthColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevButton(
                            label: "Checkout",
                            bg: Colors.white,
                            textColor: fourthColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) => AddressScreen(
                                          item: widget.item,
                                          quantity: quantity,
                                          price:
                                              widget.item.price.toInt() * 3)));
                            }),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
