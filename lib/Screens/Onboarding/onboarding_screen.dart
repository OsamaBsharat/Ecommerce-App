import 'package:ecommerceapp/Screens/Login/login.dart';
import 'package:ecommerceapp/Screens/Onboarding/background.dart';
import 'package:ecommerceapp/Screens/Onboarding/onboarding.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key,
    required this.picture,
    required this.title,
    required this.controller,
  });
  final String picture;
  final String title;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Background(),
          ),
          Positioned(
            child: Container(
              width: 307,
              height: 334,
              color: Colors.white,
              child: Image.asset(picture),
            ),
          ),
          Positioned(
            bottom: 250,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onLastPage
              ? Positioned(
                  bottom: 50,
                  child: SizedBox(
                    width: size.width * 0.75,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ),
                      },
                      child: Text("Finish"),
                      style: buttonPrimaryStyle,
                    ),
                  ),
                )
              : Positioned(
                  bottom: 50,
                  child: SizedBox(
                    width: size.width * 0.75,
                    child: ElevatedButton(
                      onPressed: () => {
                        controller.nextPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn),
                      },
                      child: Text("Next"),
                      style: buttonPrimaryStyle,
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
