import 'package:depi_task_3/models/product_model.dart';
import 'package:flutter/material.dart';

class ProdcutImageWidget extends StatefulWidget {
  const ProdcutImageWidget({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  State<ProdcutImageWidget> createState() => _ProdcutImageWidgetState();
}

class _ProdcutImageWidgetState extends State<ProdcutImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage(widget.productModel.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Center(
                child: Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.productModel.isFavourite =
                      !widget.productModel.isFavourite;
                });
              },
              icon: Center(
                child: widget.productModel.isFavourite
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_outline),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
