import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/screens/product_details.dart';
import 'package:flutter/material.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ProductDetails(productModel: productModel);
              },
            ),
          );
        },
        leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(productModel.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          productModel.title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        ),
        subtitle: Text(
          productModel.description,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
        ),
        trailing: Container(
          height: 35,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red.withOpacity(0.1),
          ),
          child: Center(
            child: Text(
              "Add To Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
