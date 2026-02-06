
import 'package:flutter/material.dart';

class ButtonBuildWidget extends StatelessWidget {
  const ButtonBuildWidget({
    super.key,
    required this.isGred,
    required this.text,
  });
  final bool isGred;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isGred ? Colors.red : Colors.transparent,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: isGred ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
