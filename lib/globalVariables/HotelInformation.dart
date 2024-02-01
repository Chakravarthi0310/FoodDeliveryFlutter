import 'package:flutter/material.dart';

class Hotel {
  final String name;
  final String type;
  final double distance;
  final double timeToReach;
  final Image image;
  double rating;
  double no_of_ratings;
  bool isFavourite;

  Hotel(
      {required this.name,
      required this.type,
      required this.distance,
      required this.timeToReach,
      required this.image,
      required this.isFavourite,
      this.no_of_ratings = 0,
      this.rating = 5});
}

List<Hotel> hotels = [
  Hotel(
      name: "Das Kitchen",
      type: "North Indian, Snacks",
      distance: 1,
      timeToReach: 12,
      isFavourite: false,
      image: Image.asset('assets/images/Restaurant1.png')),
  Hotel(
      name: "La Pion'z Pizza",
      type: "Pizzaa, Fastfood",
      distance: 1.5,
      timeToReach: 25,
      isFavourite: false,
      image: Image.asset('assets/images/Restaurant2.png')),
  Hotel(
      name: "Sri Marutinandan",
      type: "North Indian, Thali",
      distance: 2,
      timeToReach: 35,
      isFavourite: false,
      image: Image.asset('assets/images/Restaurant3.png')),
];
