import 'package:flutter/material.dart';

const primaryColor = Color(0xFF33907C);
const logo = "assets/Images/logo.png";
const String firstOnboardingImage = "assets/Images/onboarding/firstimage.png";
const String secondOnboardingImage = "assets/Images/onboarding/secondimage.png";
const String thirdOnboardingImage = "assets/Images/onboarding/thirdimage.png";
const String forgetPasswordImage ="assets/Images/forget_password/forgetpassword.png";
const String restPasswordImage ="assets/Images/forget_password/restpassword.png";
const String sendOTPimage =  "assets/Images/forget_password/sendOTPimage.png";
const String firstOnboardingTitle =
    "Sukar Store can help you\nTo find the beutiful gifts";
const String secondOnboardingTitle =
    "Now, with Sukar Store \nYou can made your favourite person happy";
const String thirdOnboardingTitle =
    "In Sukar Store \nWe work to make you happy\nLet's See That";

final ButtonStyle buttonPrimaryStyle = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
);

final ButtonStyle buttonSecondaryStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  foregroundColor: primaryColor,
);

final Text greetingMessage = Text(
  "Welcome To Sukar Store",
  style:
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
);


