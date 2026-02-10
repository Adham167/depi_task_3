import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/cart_screen_body.dart';
import 'package:depi_task_3/widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final List<ProductModel> prodcuts = ProductGridView.productList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"),
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
      ),
      body: CartScreenBody(prodcuts: prodcuts),
    );
  }
}
