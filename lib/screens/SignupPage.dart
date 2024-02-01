import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/widgets/ElevatedButton.dart';
import 'package:fooddeliveryappmodified/common/widgets/TextFormField.dart';
import 'package:fooddeliveryappmodified/common/widgets/TextGestureButton.dart';
import 'package:fooddeliveryappmodified/common/widgets/topTitle.dart';
import 'package:fooddeliveryappmodified/screens/UserScreen.dart';
import 'package:fooddeliveryappmodified/screens/loginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  void signup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TopTitle(Title: "Signup"),
              Center(
                  child: Image.asset(
                'assets/images/Logo.png',
                height: 250,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 250,
                  color: secondaryColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TfField(hintText: "Email Address"),
                        SizedBox(
                          height: 30,
                        ),
                        TfField(hintText: "Password"),
                        SizedBox(
                          height: 30,
                        ),
                        ElevButton(label: "Signup", onPressed: signup)
                      ],
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextGestureButton(
                  title: "Already have an account? Login",
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
