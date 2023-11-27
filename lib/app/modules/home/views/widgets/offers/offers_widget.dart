import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/controllers/home_controller.dart';
import 'package:squarement/app/modules/home/views/widgets/offers/offer_item.dart';

class OffersWidget extends GetView<HomeController> {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 18 / 9),
      itemBuilder: (_, index) => OfferItem(
        title: controller.offerTitles[index].title,
        color: controller.offerTitles[index].color,
        textColor: controller.offerTitles[index].textColor,
      ),
      itemCount: controller.offerTitles.length,
    );
  }
}
