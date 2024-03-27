import 'package:ecommerceapp/Screens/Auth/OTP/send_otp.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: IconButton(
            onPressed: () => {},
            icon: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SendOTPScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              sendOTPimage,
              width: 200,
              height: 200,
            ),
            Text(
              "Phone Verification",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              textAlign: TextAlign.center,
              "Enter your OTP code here ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InputForOTPDigit(),
                  InputForOTPDigit(),
                  InputForOTPDigit(),
                  InputForOTPDigit(),
                  InputForOTPDigit(),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Didn't you recived Any Code ?",
              style: TextStyle(color: Colors.white),
            ),
            GestureDetector(
              child:
                  Text("Resent new Code", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              size: size,
              text: "Verfiy",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OTPVerificationScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class InputForOTPDigit extends StatelessWidget {
  const InputForOTPDigit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextField(
        onChanged: ((value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
        }),
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold // Set text color to white
            ),
        cursorColor: Colors.white, // Set cursor color to white
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white), // Set bottom border color to white
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors
                    .white), // Set bottom border color to white when focused
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white), // Hide the other borders
          ),
        ),
      ),
    );
  }
}
