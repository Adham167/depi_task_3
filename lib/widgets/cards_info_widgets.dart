import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/custom_info_card.dart';
import 'package:flutter/material.dart';

class CardsInfoWidgets extends StatelessWidget {
  const CardsInfoWidgets({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomInfoCard(
          icon: Icon(Icons.star, color: Colors.amber),
          str1: "4.8",
          str2: "128 review",
        ),
        CustomInfoCard(
          icon: Icon(Icons.access_time, color: Colors.red),
          str1: "20",
          str2: "Min",
        ),
        CustomInfoCard(
          icon: Icon(Icons.local_fire_department, color: Colors.red),
          str1: "350",
          str2: "KCAL",
        ),
      ],
    );
  }
}
