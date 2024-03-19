import 'package:ecommerceapp/Screens/Onboarding/onboarding_screen.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          controller: _controller,
          children: <Widget>[
            OnBoardingScreen(
              picture: firstOnboardingImage,
              title:firstOnboardingTitle,
            ),
            OnBoardingScreen(
              picture: secondOnboardingImage,
              title: secondOnboardingTitle,
            ),
            OnBoardingScreen(
              picture: thirdOnboardingImage,
              title: thirdOnboardingTitle,
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
