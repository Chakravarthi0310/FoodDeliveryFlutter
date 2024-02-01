import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddeliveryappmodified/common/styles/colors.dart';

class Otpfield extends StatefulWidget {
  const Otpfield({super.key});

  @override
  State<Otpfield> createState() => _OtpfieldState();
}

class _OtpfieldState extends State<Otpfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        onChanged: (value) {
          FocusScope.of(context).nextFocus();
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          fillColor: tertiaryColor,
          filled: true,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
