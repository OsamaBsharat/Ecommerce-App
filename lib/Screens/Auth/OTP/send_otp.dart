import 'package:ecommerceapp/Screens/Auth/OTP/OTP_verification_screen.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/Screens/Auth/fotget_password.dart/forget_password_screen.dart';
import 'package:ecommerceapp/Screens/Auth/fotget_password.dart/rest_password_screen.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class SendOTPScreen extends StatefulWidget {
  const SendOTPScreen({super.key});
///osama
  @override
  State<SendOTPScreen> createState() => _SendOTPScreenState();
}

class _SendOTPScreenState extends State<SendOTPScreen> {
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
                    builder: (context) => const RestPasswordScreen(),
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
              "Verify your phone number",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              textAlign: TextAlign.center,
              "We have sent you an SMS with a code to\nenter number",
              style: TextStyle(
                color: Colors.white60,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
                size: size, hintText: "594-140-599", isPassword: false),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(size: size, text: "Next", press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OTPVerificationScreen(),
                  ),
                );
              },),
          ],
        ),
      ),
    );
  }
}
