import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color frontColor;

  const Button({
    super.key,
    required this.bgColor,
    required this.text,
    required this.frontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: frontColor,
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
