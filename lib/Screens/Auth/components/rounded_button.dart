import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.size, required this.text, required this.press,
  });

  final Size size;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.75,
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
        style: buttonSecondaryStyle,
      ),
    );
  }
}

