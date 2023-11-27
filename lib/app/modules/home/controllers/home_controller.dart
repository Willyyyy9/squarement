import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:squarement/app/modules/home/models/offer.dart';
import 'package:squarement/app/modules/home/models/sample_image.dart';
import 'package:squarement/app/modules/home/models/sample_user.dart';
import 'package:squarement/app/modules/home/network/home_network.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/string_manager.dart';

class HomeController extends GetxController {
  String selectedCategory = AppStrings.baby;
  TextEditingController searchTextController = TextEditingController();

  List<String> babyCategories = [
    "Baby Boys Clothes",
    "Baby Girls Clothes",
    "Diapers",
    "Car Seats",
    "Strollers and Prams",
    "Walkers and Bouncers",
    "Bedroom Furniture",
    "Bedding and Blankets",
    "Diaper Bags",
  ];
  List<Offer> offerTitles = [
    Offer(title: "Sale", color: Colors.red, textColor: ColorManager.white),
    Offer(title: "New In", color: Colors.black, textColor: ColorManager.white),
    Offer(
        title: "Bestsellers",
        color: Colors.yellow,
        textColor: ColorManager.black),
  ];
  List<SampleImage> sampleImages = [];
  List<SampleUser> sampleUsers = [];

  Future getImages() async {
    try {
      EasyLoading.show(status: AppStrings.loading);
      sampleImages.clear();
      final response = await HomeNetwork().getImages();
      for (Map<String, dynamic> sampleImage in response) {
        sampleImages.add(SampleImage.fromJson(sampleImage));
      }
      EasyLoading.dismiss();
      update();
    } on DioException catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError(e.message.toString());
    } catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError(AppStrings.internalError);
    }
  }

  Future getUsers() async {
    try {
      EasyLoading.show(status: AppStrings.loading);
      sampleUsers.clear();
      final response = await HomeNetwork().getUsers();
      for (Map<String, dynamic> sampleUser in response) {
        sampleUsers.add(SampleUser.fromJson(sampleUser));
      }
      EasyLoading.dismiss();
      update();
    } on DioException catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError(e.message.toString());
    } catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError(AppStrings.internalError);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getImages();
  }
}
