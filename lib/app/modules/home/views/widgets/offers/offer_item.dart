import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/controllers/home_controller.dart';
import 'package:squarement/app/resources/font_manager.dart';
import 'package:squarement/app/resources/style_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

class OfferItem extends GetView<HomeController> {
  const OfferItem({
    super.key,
    required this.title,
    required this.color,
    required this.textColor,
  });
  final String title;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s28,
      padding: const EdgeInsets.all(AppPadding.p2),
      margin: const EdgeInsets.all(AppMargin.m4),
      decoration: BoxDecoration(color: color),
      child: Center(
        child: AutoSizeText(
          title,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: getBoldStyle(
              color: textColor, height: AppSize.s1_2, fontSize: FontSize.s10),
        ),
      ),
    );
  }
}
