import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/controllers/home_controller.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/font_manager.dart';
import 'package:squarement/app/resources/style_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

class BabyCategoryWidget extends GetView<HomeController> {
  const BabyCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 18 / 9),
      itemBuilder: (_, index) => Container(
        height: AppSize.s28,
        padding: const EdgeInsets.all(AppPadding.p2),
        margin: const EdgeInsets.all(AppMargin.m4),
        decoration: BoxDecoration(
            border: Border.all(width: AppSize.s1, color: ColorManager.grey)),
        child: Center(
          child: AutoSizeText(
            controller.babyCategories[index],
            maxLines: 2,
            textAlign: TextAlign.center,
            style: getRegularStyle(
                color: ColorManager.black,
                height: AppSize.s1_2,
                fontSize: FontSize.s10),
          ),
        ),
      ),
      itemCount: controller.babyCategories.length,
    );
  }
}
