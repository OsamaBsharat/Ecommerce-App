import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  const AlreadyHaveAnAccountCheck({
    super.key,
    required this.login,
    required this.press,
  });
  final bool login;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't Have an account? " : "Have an account ? ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign up" : "Sign in",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
