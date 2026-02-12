import 'package:flutter/material.dart';

class CustomIngredientCard extends StatelessWidget {
  const CustomIngredientCard({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(padding: const EdgeInsets.all(8.0), child: Text(name)),
    );
  }
}
