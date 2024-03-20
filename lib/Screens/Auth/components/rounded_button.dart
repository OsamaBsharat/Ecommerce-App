import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.size, required this.text,
  });

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.75,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
        style: buttonSecondaryStyle,
      ),
    );
  }
}

