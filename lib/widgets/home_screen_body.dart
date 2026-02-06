import 'package:depi_task_3/widgets/feature_button.dart';
import 'package:depi_task_3/widgets/food_carousel.dart';
import 'package:depi_task_3/widgets/product_grid_view.dart';
import 'package:depi_task_3/widgets/search_field_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchFieldWidget(),
                SizedBox(height: 32),
                FoodCarousel(),
                SizedBox(height: 32),
                Text(
                  "Featured Item",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 16),
                FeatureButton(),
                SizedBox(height: 16),
              ],
            ),
          ),
          ProductGridView(),
        ],
      ),
    );
  }
}

