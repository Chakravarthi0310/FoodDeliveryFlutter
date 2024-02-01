import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';
import 'package:fooddeliveryappmodified/common/widgets/searchBar.dart';
import 'package:fooddeliveryappmodified/globalVariables/HotelInformation.dart';

class HotelDetailsScreen extends StatefulWidget {
  final Hotel hotel_details;

  const HotelDetailsScreen({Key? key, required this.hotel_details});

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: fourthColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  widget.hotel_details.isFavourite =
                      !widget.hotel_details.isFavourite;
                });
              },
              icon: widget.hotel_details.isFavourite
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_outline,
                      color: fourthColor,
                    ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: fourthColor,
                ))
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchBarWidget(),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.hotel_details.name,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeLg),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.hotel_details.type,
                  style: TextStyle(fontSize: fontSizemd),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green.shade700),
                  child: Row(
                    children: [
                      Text(
                        widget.hotel_details.rating.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("${widget.hotel_details.no_of_ratings.toString()}K rating")
              ],
            )
          ],
        ),
      ),
    );
  }
}
