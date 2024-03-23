import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class SendOTPScreen extends StatefulWidget {
  const SendOTPScreen({super.key});

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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ForgetPasswordScreen(),
                //   ),
                // );
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Verify your phone number",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              textAlign: TextAlign.center,
              "We have sent you an SMS with a code to\nenter number",
              style: TextStyle(
                color: Colors.white60,
              ),
            ),
            RoundedTextField(
                size: size, hintText: "594-140-599", isPassword: false),
            RoundedButton(size: size, text: "Next", press: () {}),
          ],
        ),
      ),
    );
  }
}
