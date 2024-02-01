import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/screens/HotelDetails.dart';
import 'package:fooddeliveryappmodified/globalVariables/HotelInformation.dart';

class HotelWidget extends StatefulWidget {
  final Hotel hotel;

  HotelWidget({required this.hotel});

  @override
  _HotelWidgetState createState() => _HotelWidgetState();
}

List<Widget> hotelWidgets = hotels
    .map(
      (hotel) => HotelWidget(hotel: hotel),
    )
    .toList();

class _HotelWidgetState extends State<HotelWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle hotel tap if needed
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HotelDetailsScreen(
                      hotel_details: widget.hotel,
                    )));
      },
      child: buildHotelWidget(widget.hotel),
    );
  }

  Widget buildHotelWidget(Hotel hotel) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              hotel.image,
              Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        hotel.isFavourite = !hotel.isFavourite;
                      });
                    },
                    icon: hotel.isFavourite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.circle_rounded,
            color: Colors.green,
            size: 16,
          ),
          Text(
            hotel.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              Text(hotel.type),
              Spacer(),
              Icon(Icons.access_time),
              Text("${hotel.timeToReach} mins | ${hotel.distance} km"),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
