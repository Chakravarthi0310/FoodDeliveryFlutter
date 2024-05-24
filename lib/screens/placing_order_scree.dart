import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';
import 'package:fooddeliveryappmodified/common/widgets/CustomQuantitySelector.dart';
import 'package:fooddeliveryappmodified/common/widgets/ElevatedButton.dart';
import 'package:fooddeliveryappmodified/globalVariables/HotelInformation.dart';
import 'package:fooddeliveryappmodified/screens/AddressScreen.dart';
import 'package:fooddeliveryappmodified/screens/OrderPlaced.dart';

class PlaceOrderScreen extends StatefulWidget {
  final Items item;
  int quantity;
  PlaceOrderScreen({Key? key, required this.quantity, required this.item});

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  String type = "Regular";

  void increment() {
    setState(() {
      widget.quantity++;
    });
  }

  void decrement() {
    if (widget.quantity > 1) {
      setState(() {
        widget.quantity--;
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
                          "Rs.${widget.item.price * widget.quantity}",
                          style: TextStyle(
                              color: fourthColor,
                              fontWeight: FontWeight.bold,
                              fontSize: fontSizeLg),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        QuantitySelector(quantity: widget.quantity)
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
                              "${widget.item.price * widget.quantity}",
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
                              "${widget.item.price * widget.quantity}",
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
                          height: 40,
                        ),
                        ElevButton(
                            label: "Place Order",
                            bg: Colors.white,
                            textColor: fourthColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) => OrderPlacedScreen()));
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
