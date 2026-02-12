
import 'package:depi_task_3/models/product_model.dart';
import 'package:flutter/material.dart';

class TitleAndPriceWidget extends StatelessWidget {
  const TitleAndPriceWidget({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            productModel.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),

        Text(
          '\$${productModel.price.toString()}',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}