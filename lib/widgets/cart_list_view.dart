
import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key, required this.prodcuts});
  final List<ProductModel> prodcuts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: prodcuts.length,
        itemBuilder: (context, index) {
          return CartItemWidget(productModel: prodcuts[index]);
        },
      ),
    );
  }
}

