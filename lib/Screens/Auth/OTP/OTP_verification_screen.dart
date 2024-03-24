import 'package:ecommerceapp/Screens/Auth/OTP/send_otp.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                color: Colors.white60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextField(
                      onChanged: ((value) {
                        if (value.length == 1)
                          FocusScope.of(context).nextFocus();
                      }),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextField(
                      onChanged: ((value) {
                        if (value.length == 1)
                          FocusScope.of(context).nextFocus();
                      }),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextField(
                      onChanged: ((value) {
                        if (value.length == 1)
                          FocusScope.of(context).nextFocus();
                      }),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextField(
                      onChanged: ((value) {
                        if (value.length == 1)
                          FocusScope.of(context).nextFocus();
                      }),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextField(
                      onChanged: ((value) {
                        if (value.length == 1)
                          FocusScope.of(context).nextFocus();
                      }),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextField(
                      onChanged: ((value) {
                        if (value.length == 1)
                          FocusScope.of(context).nextFocus();
                      }),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              size: size,
              text: "Next",
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