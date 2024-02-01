import 'package:flutter/material.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';
import 'package:fooddeliveryappmodified/common/styles/sizes.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        title: Text(
          'Payment',
          style: TextStyle(color: fourthColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cards',
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Credit/Debit Card',
                      style:
                          TextStyle(fontSize: fontSizemd, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'UPI',
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/UPIIcon.png',
                      width: 30,
                    ),
                    Image.asset(
                      'assets/images/UPIIconpart2.png',
                      width: 10,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Credit/Debit Card',
                      style:
                          TextStyle(fontSize: fontSizemd, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Wallets',
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/PaytmIcon.png',
                      height: 10,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Paytm Wallet',
                      style:
                          TextStyle(fontSize: fontSizemd, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/PhonePeIcon.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'PhonePe Wallet',
                      style:
                          TextStyle(fontSize: fontSizemd, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'NetBaniking',
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/BankIcon.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Credit/Debit Card',
                      style:
                          TextStyle(fontSize: fontSizemd, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Net Baniking',
              style:
                  TextStyle(fontSize: fontSizeLg, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Row(
                  children: [
                    Icon(Icons.money),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Credit/Debit Card',
                      style:
                          TextStyle(fontSize: fontSizemd, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
