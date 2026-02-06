import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});
  final List<ProductModel> productList = const [
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "Special Offer",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "New Big Mac",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "New Burger Combo",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "Special Offer",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "New Big Mac",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "New Burger Combo",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "Special Offer",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "New Big Mac",
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return ProductCard(productModel: productList[index]);
      }, childCount: 8),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.59,
      ),
    );
  }
}
