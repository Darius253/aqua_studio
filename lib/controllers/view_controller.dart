import 'package:aqua_studio/shared/exports.dart';

class ViewController extends GetxController {
  var currentView = Views.reel.obs;
  var currentViewIndex = 0.obs;
  var isMenuOpen = false.obs;

  final ItemScrollController itemScrollController = ItemScrollController();
}
