import 'package:ecommerceapp/Screens/Auth/Login/login.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/Screens/Auth/fotget_password.dart/forget_password_screen.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class RestPasswordScreen extends StatefulWidget {
  const RestPasswordScreen({super.key});

  @override
  State<RestPasswordScreen> createState() => _RestPasswordScreen();
}

class _RestPasswordScreen extends State<RestPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                    builder: (context) => const ForgetPasswordScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      backgroundColor: primaryColor,
      body: restPasswordBody(size),
    );
  }

  Center restPasswordBody(Size size) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              restPasswordImage,
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Enter New Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              "Your new password must be different\nfrom previously used password.",
              style: TextStyle(
                color: Colors.white60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedTextField(
                size: size, hintText: "Password", isPassword: true),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
                size: size, hintText: "Confirm Password", isPassword: true),
            const SizedBox(
              height: 25,
            ),
            RoundedButton(
              size: size,
              text: "Continue",
              press: () {},
            ),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
