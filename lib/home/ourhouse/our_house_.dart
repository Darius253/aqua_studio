import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class OurHouse extends StatefulWidget {
  const OurHouse({Key? key}) : super(key: key);

  @override
  State<OurHouse> createState() => _OurHouseState();
}

class _OurHouseState extends State<OurHouse> {
  List<Widget> pages = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen()
  ];

  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('our house'),
      onVisibilityChanged: (VisibilityInfo visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.2) {
          viewController.currentView.value = Views.ourHouse;
          viewController.currentViewIndex.value = 1;
        }
      },
      child: Column(children: pages, mainAxisSize: MainAxisSize.min),
    );
  }
}
