import 'package:ecommerceapp/Screens/Onboarding/onboarding_1.dart';
import 'package:ecommerceapp/Screens/Splash/splash.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(      
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const Onboarding1(),
    );
  }
}
