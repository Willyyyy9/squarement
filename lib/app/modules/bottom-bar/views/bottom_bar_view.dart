import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/bottom-bar/views/widgets/bottom_bar_button.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/string_manager.dart';
import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  const BottomBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(builder: (controller) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: ColorManager.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: BottomBarButton(
                        FontAwesomeIcons.house, 0, AppStrings.home),
                  ),
                  Expanded(
                    child: BottomBarButton(FontAwesomeIcons.magnifyingGlass, 1,
                        AppStrings.categories),
                  ),
                  Expanded(
                    child: BottomBarButton(
                        FontAwesomeIcons.bagShopping, 2, AppStrings.basket),
                  ),
                  Expanded(
                    child: BottomBarButton(
                        FontAwesomeIcons.bookmark, 3, AppStrings.myLists),
                  ),
                  Expanded(
                    child: BottomBarButton(
                        FontAwesomeIcons.user, 4, AppStrings.profile),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
