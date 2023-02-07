import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/widgets/home.dart';
import '../../home/widgets/profile.dart';
import '../../home/widgets/reels.dart';
import '../../home/widgets/search.dart';
import '../../home/widgets/shop.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottom(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidget = [
    const HomeePage(),
    const SearchPage(),
    const ReelsPage(),
    const ShopPage(),
    const ProfilePage(),
  ];
}
