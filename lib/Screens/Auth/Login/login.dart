import 'package:ecommerceapp/Screens/Auth/Signup/signup.dart';
import 'package:ecommerceapp/Screens/Auth/components/already_have_an_account_check.dart';
import 'package:ecommerceapp/Screens/Auth/components/forget_password.dart';
import 'package:ecommerceapp/Screens/Auth/components/login_signup_message.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_button.dart';
import 'package:ecommerceapp/Screens/Auth/components/rounded_text_field.dart';
import 'package:ecommerceapp/Screens/Auth/fotget_password.dart/forget_password_screen.dart';
import 'package:ecommerceapp/Screens/HomeDashboard/home_dashboard.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/cupertino.dart';
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
      body: bulidBody(size),
      backgroundColor: primaryColor,
    );
  }

  Center bulidBody(Size size) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          greetingMessage,
          SizedBox(
            height: size.height * 0.1,
          ),
          LoginSignUpMessage(
            loginflag: true,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedTextField(
            size: size,
            hintText: "Email/Mobile Number",
            isPassword: false,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedTextField(
            size: size,
            hintText: "Password",
            isPassword: true,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          RoundedButton(
            size: size,
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeDashboardScreen(),
                ),
              );
            },
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          ForgetPassword(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgetPasswordScreen(),
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.07),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
