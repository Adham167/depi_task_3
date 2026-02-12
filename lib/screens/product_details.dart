import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/product_details_body.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Color(0xFFFAFAFA),

      body: ProductDetailsBody(productModel: productModel),
    );
  }
}
