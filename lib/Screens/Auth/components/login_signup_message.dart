import 'package:flutter/material.dart';

class LoginSignUpMessage extends StatelessWidget {
  const LoginSignUpMessage({super.key,
  required this.loginflag,
  
  });
  final bool loginflag;
  @override
  Widget build(BuildContext context) {
    return Text(
      loginflag ? "Login to your account" : "Create your account now !",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
