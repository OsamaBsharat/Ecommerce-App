import 'package:ecommerceapp/Screens/Onboarding/onboarding_screen.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:flutter/material.dart';

bool onLastPage = false;

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          controller: controller,
          onPageChanged: (index) => {
            setState(() {
              onLastPage = (index == 2);
            }),
          },
          children: <Widget>[
            OnBoardingScreen(
              picture: firstOnboardingImage,
              title: firstOnboardingTitle,
              controller: controller,
            ),
            OnBoardingScreen(
              picture: secondOnboardingImage,
              title: secondOnboardingTitle,
              controller: controller,
            ),
            OnBoardingScreen(
              picture: thirdOnboardingImage,
              title: thirdOnboardingTitle,
              controller: controller,
            )
          ],
        ),
        Container(
          alignment: Alignment(0, 0.7),
          child: SmoothPageIndicator(
            controller: controller,
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
