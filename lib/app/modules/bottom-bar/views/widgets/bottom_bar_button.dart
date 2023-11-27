import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/bottom-bar/controllers/bottom_bar_controller.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/style_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

class BottomBarButton extends GetView<BottomBarController> {
  const BottomBarButton(this.icon, this.buttonIndex, this.title, {super.key});
  final IconData icon;
  final String title;
  final int buttonIndex;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(builder: (controller) {
      bool isSelected = controller.bottomBarSelectedIndex == buttonIndex;

      return InkWell(
        onTap: () {
          controller.navigateToPage(buttonIndex);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p16, horizontal: AppPadding.p4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color:
                    isSelected ? ColorManager.primary : ColorManager.lightBlack,
                size: AppSize.s20,
              ),
              const SizedBox(
                height: AppSize.s4,
              ),
              AutoSizeText(
                title,
                maxLines: 1,
                style: getRegularStyle(
                  color: isSelected
                      ? ColorManager.primary
                      : ColorManager.lightBlack,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
