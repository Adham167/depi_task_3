import 'package:depi_task_3/models/product_model.dart';
import 'package:depi_task_3/widgets/cards_info_widgets.dart';
import 'package:depi_task_3/widgets/custom_button.dart';
import 'package:depi_task_3/widgets/description_widget.dart';
import 'package:depi_task_3/widgets/ingredients_widget.dart';
import 'package:depi_task_3/widgets/prodcut_image_widget.dart';
import 'package:depi_task_3/widgets/title_and_price_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ProdcutImageWidget(productModel: productModel),
          SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                children: [
                  TitleAndPriceWidget(productModel: productModel),
                  SizedBox(height: 16),
                  CardsInfoWidgets(productModel: productModel),
                  SizedBox(height: 16),
                  DescriptionWidget(productModel: productModel),
                  SizedBox(height: 16),
                  IngredientsWidget(),
                ],
              ),
            ),
          ),
          CustomButton(name: "Add To Cart"),
        ],
      ),
    );
  }
}

