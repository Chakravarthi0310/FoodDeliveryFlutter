import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';
import 'package:fooddeliveryappmodified/common/widgets/searchBar.dart';
import 'package:fooddeliveryappmodified/globalVariables/UserAddresses.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widgetBackgroundColor,
      appBar: AppBar(
        backgroundColor: widgetBackgroundColor,
        title: Text(
          'Address',
          textAlign: TextAlign.center,
          style: TextStyle(color: fourthColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: fourthColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarWidget(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: widgetBackgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Use current location',
                      style:
                          TextStyle(color: fourthColor, fontSize: fontSizemd),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Saved Addresses',
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeLg),
            ),
            Column(
              children: user_addresses,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Recent addresses',
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            ),
            user_addresses[0],
          ],
        ),
      ),
    );
  }
}
