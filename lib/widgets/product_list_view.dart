
import 'package:depi_task_3/widgets/product_grid_view.dart';
import 'package:depi_task_3/widgets/product_list_view_item.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: ProductGridView.productList.length,
      itemBuilder: (context, index) {
        return ProductListViewItem(
          productModel: ProductGridView.productList[index],
        );
      },
    );
  }
}
