import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/ItemWidgets/Hotels.dart';
import 'package:fooddeliveryappmodified/ItemWidgets/Moods.dart';
import 'package:fooddeliveryappmodified/ItemWidgets/Offers.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/widgets/Profile.dart';
import 'package:fooddeliveryappmodified/common/widgets/searchBar.dart';
import 'package:fooddeliveryappmodified/globalVariables/GlobalVariables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool viewallButton = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: widgetBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/PointerIcon.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ProfileIcon(),
                      ],
                    ),
                    Text(
                      UserAddress,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SearchBarWidget(),
              Container(
                  height: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal, children: Offers)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What's your mood today?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        viewallButton = !viewallButton;
                      });
                    },
                    child: Text(
                      "view all",
                      style: TextStyle(
                          color: fourthColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: viewallButton ? 130 : 150.0 * (Moods.length / 3),
                child: viewallButton
                    ? ListView.separated(
                        itemCount: Moods.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 10,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Moods[index];
                        },
                      )
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15),
                        itemCount: Moods.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Moods[index],
                          );
                        },
                      ),
              ),
              Center(
                child: Text(
                  "ALL RESTAURANTS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 100.0 * hotelWidgets.length,
                  child: ListView(
                    children: hotelWidgets,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
