import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/globalVariables/GlobalVariables.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tertiaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(color: fourthColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                color: fourthColor,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/ProfileBg.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "$name\n$phoneNumber\n$email",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "view activity",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/Iconbg.png',
                                height: 100,
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/ProfileIcon.png',
                                height: 40,
                              ),
                            )
                          ],
                        )),
                    Positioned(
                        right: 20,
                        bottom: 10,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/Edit.png',
                            height: 30,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                endIndent: 20,
                indent: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/OrderHistory.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Order History",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/TrackOrder.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Track Order",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Transactions.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Transactions",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Help&Support.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Help & Support",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Feedback.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Feedback",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Report.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Report an emergency",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/About.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "About",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.dark_mode),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Dark Mode",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Switch(
                                value: darkmode,
                                onChanged: (value) {
                                  setState(() {
                                    darkmode = value;
                                  });
                                })
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.logout),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Log out",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/ExitArrow.png',
                              height: 25,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
