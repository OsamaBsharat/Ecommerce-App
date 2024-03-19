import 'package:ecommerceapp/Screens/Onboarding/background.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key,
    required this.picture,
    required this.title,
  });
  final String picture;
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    );
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
          Positioned(
            bottom: 50,
            child: SizedBox(
              width: size.width * 0.75,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("Next"),
                style: style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
