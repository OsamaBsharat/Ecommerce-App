import 'package:ecommerceapp/Screens/Onboarding/onboarding_screen.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          controller: _controller,
          children: <Widget>[
            OnBoardingScreen(
              picture: "assets/Images/onboarding/firstimage.png",
              title: "Empowering Artisans \nFarmers & Micro Bisuness",
            ),
            OnBoardingScreen(
              picture: "assets/Images/onboarding/firstimage.png",
              title: "Empowering Artisans \nFarmers & Micro Bisuness",
            ),
            OnBoardingScreen(
              picture: "assets/Images/onboarding/firstimage.png",
              title: "Empowering Artisans \nFarmers & Micro Bisuness",
            )
          ],
        ),
        Container(
          alignment: Alignment(0, 0.7),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: SwapEffect(
              dotColor: Color.fromARGB(255, 147, 228, 197),
              activeDotColor: primaryColor,
              dotWidth: 15.0,
              dotHeight: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
