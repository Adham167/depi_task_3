import 'package:depi_task_3/widgets/custom_ingredient_card.dart';
import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ingredients",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            CustomIngredientCard(name: "Beef Patty"),
            CustomIngredientCard(name: "Cheddar"),
            CustomIngredientCard(name: "Lettuce"),
            CustomIngredientCard(name: "Tomato"),
          ],
        ),
      ],
    );
  }
}
