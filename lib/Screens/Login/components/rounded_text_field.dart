import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    required this.size,
    required this.hintText,
    required this.isPassword,
  });
  final String hintText;
  final bool isPassword;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
