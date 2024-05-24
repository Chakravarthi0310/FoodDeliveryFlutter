import 'package:flutter/material.dart';

class Hotel {
  final String name;
  final String type;
  final String place;
  final double distance;
  final double timeToReach;
  final Image image;
  double rating;
  double no_of_ratings;
  bool isFavourite;
  List<Items> itemList = [];

  Hotel(
      {required this.name,
      required this.type,
      required this.distance,
      required this.timeToReach,
      required this.image,
      required this.isFavourite,
      required this.itemList,
      required this.place,
      this.no_of_ratings = 0,
      this.rating = 5});
}

class Items {
  final String itemName;
  final double price;
  final Image image;
  Items({required this.itemName, required this.price, required this.image});
}

List<Hotel> hotels = [
  Hotel(
      name: "Das Kitchen",
      type: "North Indian, Snacks",
      distance: 1,
      timeToReach: 12,
      isFavourite: false,
      place: "Madhapur",
      itemList: [
        Items(
            itemName: "item1",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant1.png',
              fit: BoxFit.cover,
            )),
        Items(
            itemName: "item2",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant1.png',
              fit: BoxFit.cover,
            )),
        Items(
            itemName: "item3",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant1.png',
              fit: BoxFit.cover,
            )),
      ],
      image: Image.asset('assets/images/Restaurant1.png')),
  Hotel(
      name: "La Pion'z Pizza",
      type: "Pizzaa, Fastfood",
      distance: 1.5,
      timeToReach: 25,
      place: "Madhapur",
      isFavourite: false,
      itemList: [
        Items(
            itemName: "item1",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant2.png',
              fit: BoxFit.cover,
            )),
        Items(
            itemName: "item2",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant2.png',
              fit: BoxFit.cover,
            )),
        Items(
            itemName: "item3",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant2.png',
              fit: BoxFit.cover,
            )),
      ],
      image: Image.asset('assets/images/Restaurant2.png')),
  Hotel(
      name: "Sri Marutinandan",
      type: "North Indian, Thali",
      distance: 2,
      timeToReach: 35,
      isFavourite: false,
      place: "Madhapur",
      itemList: [
        Items(
            itemName: "item1",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant3.png',
              fit: BoxFit.cover,
            )),
        Items(
            itemName: "item2",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant3.png',
              fit: BoxFit.cover,
            )),
        Items(
            itemName: "item3",
            price: 100,
            image: Image.asset(
              'assets/images/Restaurant3.png',
              fit: BoxFit.cover,
            )),
      ],
      image: Image.asset('assets/images/Restaurant3.png')),
];
