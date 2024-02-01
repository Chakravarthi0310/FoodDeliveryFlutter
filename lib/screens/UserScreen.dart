import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/DashBoardWidgetScreens/Category.dart';
import 'package:fooddeliveryappmodified/DashBoardWidgetScreens/cart.dart';
import 'package:fooddeliveryappmodified/DashBoardWidgetScreens/home.dart';

import '../DashBoardWidgetScreens/food.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    FoodScreen(),
    CategoryScreen(),
    CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/HomeIcon.png',
                  height: 30,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/FoodIcon.png',
                  height: 30,
                ),
                label: 'Food'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/CategoryIcon.png',
                  height: 30,
                ),
                label: 'Category'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/CartIcon.png',
                  height: 30,
                ),
                label: 'Cart')
          ],
        ),
        body: screens[selectedIndex]);
  }
}
