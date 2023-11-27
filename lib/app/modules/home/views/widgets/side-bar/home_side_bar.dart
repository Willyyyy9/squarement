import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/controllers/home_controller.dart';
import 'package:squarement/app/modules/home/views/widgets/side-bar/home_side_bar_item.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/string_manager.dart';

class HomeSideBar extends GetView<HomeController> {
  const HomeSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.backgroundGrey,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeSideBarItem(AppStrings.baby),
          HomeSideBarItem(AppStrings.toddler),
          HomeSideBarItem(AppStrings.kids),
          HomeSideBarItem(AppStrings.toys),
          HomeSideBarItem(AppStrings.maternity),
          HomeSideBarItem(AppStrings.gifts),
        ],
      ),
    );
  }
}
