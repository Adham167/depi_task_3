
import 'package:depi_task_3/models/product_model.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  bool isShowen = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          '${widget.productModel.description}gggggggggggggggggggggggggggggggggggg',
          maxLines: isShowen ? null : 1,
          overflow: isShowen ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isShowen = !isShowen;
            });
          },
          child: Text(
            isShowen ? "Show Less" : "Show More",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
