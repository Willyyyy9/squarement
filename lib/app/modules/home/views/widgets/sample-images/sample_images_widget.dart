import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/controllers/home_controller.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

class SampleImagesWidget extends StatelessWidget {
  const SampleImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 14 / 9),
        itemBuilder: (_, index) => Container(
            height: AppSize.s40,
            padding: const EdgeInsets.all(AppPadding.p2),
            margin: const EdgeInsets.all(AppMargin.m4),
            decoration: BoxDecoration(
                border:
                    Border.all(width: AppSize.s1, color: ColorManager.grey)),
            child: Image.network(
              controller.sampleImages[index].url,
              fit: BoxFit.cover,
              width: double.infinity,
            )),
        itemCount: controller.sampleImages.length,
      );
    });
  }
}
