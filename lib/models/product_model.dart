// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class ProductModel {
  final String image;
  final String title;
  final double price;
  final String description;
  bool isFavourite;
  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    this.isFavourite = false,
  });
}
