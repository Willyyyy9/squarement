import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/controllers/home_controller.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/font_manager.dart';
import 'package:squarement/app/resources/style_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

class HomeSideBarItem extends GetView<HomeController> {
  const HomeSideBarItem(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return InkWell(
        onTap: () {
          controller.selectedCategory = title;
          controller.update();
        },
        child: Container(
          width: double.infinity,
          height: AppSize.s50,
          margin: const EdgeInsets.only(left: AppMargin.m2),
          padding: const EdgeInsets.all(AppPadding.p8),
          decoration: BoxDecoration(
              color: controller.selectedCategory == title
                  ? ColorManager.white
                  : ColorManager.backgroundGrey,
              border: Border(
                  left: BorderSide(
                      width: controller.selectedCategory == title ? 2 : 0,
                      color: controller.selectedCategory == title
                          ? ColorManager.primary
                          : ColorManager.transparent))),
          child: Center(
            child: Text(
              title,
              style: getBoldStyle(
                  color: ColorManager.black, fontSize: FontSize.s14),
            ),
          ),
        ),
      );
    });
  }
}
