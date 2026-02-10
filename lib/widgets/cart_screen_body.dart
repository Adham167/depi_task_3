
import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/cart_list_view.dart';
import 'package:depi_task_3/widgets/check_out_widget.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({
    super.key,
    required this.prodcuts,
  });

  final List<ProductModel> prodcuts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xFFF3EBDE),
            child: Icon(Icons.account_circle_outlined, size: 30),
          ),
          title: Text(
            "Burger Palaced",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "${prodcuts.length} items",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16),
        CartListView(prodcuts: prodcuts),
        CheckOutWidget(),
      ],
    );
  }
}


