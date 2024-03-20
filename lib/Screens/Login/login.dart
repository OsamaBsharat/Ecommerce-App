import 'package:ecommerceapp/Screens/Login/components/already_have_an_account_check.dart';
import 'package:ecommerceapp/Screens/Login/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Login/components/rounded_text_field.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To Sukar Store",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Login to your account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            RoundedTextField(
              size: size,
              hintText: "Email/Mobile Number",
              isPassword: false,
            ),
            RoundedTextField(
              size: size,
              hintText: "Password",
              isPassword: true,
            ),
            RoundedButton(
              size: size,
              text: "Login",
            ),
            Text(
              "Forget your Password?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () => {},
            ),
          ],
        ),
      ),
      backgroundColor: primaryColor,
    );
  }
}

