import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ViewController extends GetxController {
  var currentView = Views.reel.obs;
  var currentViewIndex = 0.obs;
  var isMenuOpen = false.obs;
  final PageController pageController = PageController();

  // final ItemScrollController itemScrollController = ItemScrollController();
  
  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
