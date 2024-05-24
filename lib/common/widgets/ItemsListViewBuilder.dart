import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/globalVariables/HotelInformation.dart';
import 'package:fooddeliveryappmodified/screens/CheckOutScreen.dart';

class ItemsBuilder extends StatefulWidget {
  final List<Items> items;
  const ItemsBuilder({super.key, required this.items});

  @override
  State<ItemsBuilder> createState() => _ItemsBuilderState();
}

class _ItemsBuilderState extends State<ItemsBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: widget.items.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 400,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.green,
                      size: 14,
                    ),
                    Text(widget.items[index].itemName),
                    Text("Rs.${widget.items[index].price}")
                  ],
                ),
                Stack(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 200,
                        child: widget.items[index].image),
                    Positioned(
                        bottom: 0,
                        right: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => CheckOutScreen(
                                        item: widget.items[index])));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: fourthColor,
                                borderRadius: BorderRadius.circular(5)),
                            height: 30,
                            width: 70,
                            child: Center(
                              child: Text(
                                "Add",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ))
                  ],
                )
              ],
            ),
          );
        });
  }
}
