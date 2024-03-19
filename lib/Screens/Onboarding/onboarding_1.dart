import 'package:ecommerceapp/Screens/Onboarding/background.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
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
            child: Image.asset("assets/Images/onboarding/firstimage.png"),
          )),
        ],
      ),
    );
  }
}
