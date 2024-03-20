import 'package:ecommerceapp/Screens/Auth/Login/login.dart';
import 'package:ecommerceapp/Screens/Auth/components/already_have_an_account_check.dart';
import 'package:ecommerceapp/Screens/Auth/components/login_signup_message.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            greetingMessage,
            SizedBox(
              height: size.height * 0.06,
            ),
            LoginSignUpMessage(loginflag: false),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedTextField(
                size: size, hintText: "First Name", isPassword: false),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
                size: size, hintText: "Last Name", isPassword: false),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
                size: size,
                hintText: "Email ID/Phone Number",
                isPassword: false),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
                size: size, hintText: "Password", isPassword: true),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
                size: size, hintText: "Re-enter Password", isPassword: true),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(size: size, text: "Create"),
            SizedBox(
              height: size.height * 0.04,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
