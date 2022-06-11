import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class OurHouse extends StatefulWidget {
  const OurHouse({Key? key}) : super(key: key);

  @override
  State<OurHouse> createState() => _OurHouseState();
}

class _OurHouseState extends State<OurHouse> {
  final PageController _pageController = PageController();
  int pageIndex = 0;
  List<Widget> pages = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
            PageView(
              pageSnapping: true,
              scrollDirection: Axis.vertical,
              padEnds: false,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              controller: _pageController,
              children: pages,
            ),
          ],
        ));
  }
}
