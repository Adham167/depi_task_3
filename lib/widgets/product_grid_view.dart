import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});
  static final List<ProductModel> productList = [
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "Special Offer",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 200,
    ),
    ProductModel(
      image: "assets/images/img_2.jpg",
      title: "New Big Mac",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 230,
    ),
    ProductModel(
      image: "assets/images/img_3.jpg",
      title: "New Burger Combo",
      price: 180,
      description: "Fresh sandwitch for your wife if you love her !!",
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "Special Offer",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 360,
    ),
    ProductModel(
      image: "assets/images/img_2.jpg",
      title: "New Big Mac",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 200,
    ),
    ProductModel(
      image: "assets/images/img_3.jpg",
      title: "New Burger Combo",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 400,
    ),
    ProductModel(
      image: "assets/images/img_1.jpg",
      title: "Special Offer",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 250,
    ),
    ProductModel(
      image: "assets/images/img_2.jpg",
      title: "New Big Mac",
      description: "Fresh sandwitch for your wife if you love her !!",
      price: 300,
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
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.55,
      ),
    );
  }
}
