import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:squarement/app/common/widgets/app_text_form_field.dart';
import 'package:squarement/app/modules/bottom-bar/views/bottom_bar_view.dart';
import 'package:squarement/app/modules/home/views/widgets/baby/baby_category_widget.dart';
import 'package:squarement/app/modules/home/views/widgets/offers/offers_widget.dart';
import 'package:squarement/app/modules/home/views/widgets/sample-images/sample_images_widget.dart';
import 'package:squarement/app/modules/home/views/widgets/side-bar/home_side_bar.dart';
import 'package:squarement/app/resources/asset_manager.dart';
import 'package:squarement/app/resources/font_manager.dart';
import 'package:squarement/app/resources/string_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
      child: Column(
        children: [
          AppTextFormField(
            hint: AppStrings.whatAreYouLookingFor,
            controller: controller.searchTextController,
            fontSize: FontSize.s14,
            prefixIcon: FontAwesomeIcons.magnifyingGlass,
          ),
          Expanded(
            child: Row(
              children: [
                const Expanded(child: HomeSideBar()),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            child: Image.asset(
                              ImageAssets.blackFridayBanner,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                        const BabyCategoryWidget(),
                        const OffersWidget(),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            child: Image.asset(
                              ImageAssets.blackFridayBanner,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                        const Expanded(flex: 2, child: SampleImagesWidget()),
                      ],
                    )),
              ],
            ),
          ),
          const BottomBarView()
        ],
      ),
    ));
  }
}
