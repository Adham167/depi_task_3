import 'package:carousel_slider/carousel_slider.dart';
import 'package:depi_task_3/models/offer_model.dart';
import 'package:depi_task_3/widgets/offer_widget.dart';
import 'package:flutter/material.dart';

class FoodCarousel extends StatelessWidget {
  FoodCarousel({super.key});
  final List<OfferModel> offerList = [
    OfferModel(image: 'assets/images/img_1.jpg', title: "Special Offer"),
    OfferModel(image: 'assets/images/img_2.jpg', title: "New Big Mac"),
    OfferModel(image: 'assets/images/img_3.jpg', title: "New Burger Combo"),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 1),
      ),
      items: offerList.map((images) {
        return OfferWidget(offerModel: images);
      }).toList(),
    );
  }
}
