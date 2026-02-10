import 'package:depi_task_3/models/product_model.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 70,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(widget.productModel.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        widget.productModel.title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7),

          Text(
            widget.productModel.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 1),
          Text(widget.productModel.title, style: TextStyle(color: Colors.red)),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (counter > 0) counter--;
              });
            },
            icon: Icon(Icons.remove),
          ),
          Text(counter.toString()),
          IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
