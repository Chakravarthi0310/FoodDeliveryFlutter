import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/widgets/ElevatedButton.dart';
import 'package:fooddeliveryappmodified/common/widgets/OtpField.dart';
import 'package:fooddeliveryappmodified/common/widgets/TextGestureButton.dart';
import 'package:fooddeliveryappmodified/screens/UserScreen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "OTP",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/MixedLogo.png',
                height: 200,
              ),
              Container(
                height: 220,
                width: double.infinity,
                color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Enter OTP",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Form(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Otpfield(),
                            Otpfield(),
                            Otpfield(),
                            Otpfield(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevButton(
                          label: "Submit",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          })
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextGestureButton(
                  title: "Don't recieve the OTP? Resend", onpressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
