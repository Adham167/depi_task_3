
import 'package:flutter/material.dart';

class CustomInfoCard extends StatelessWidget {
  const CustomInfoCard({
    super.key,
    required this.icon,
    required this.str1,
    required this.str2,
  });
  final Icon icon;
  final String str1;
  final String str2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              icon,
              Text(
                str1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                overflow: TextOverflow.ellipsis,
              ),
              Text(str2),
            ],
          ),
        ),
      ),
    );
  }
}
