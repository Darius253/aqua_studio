import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class OurHouseMobile extends StatefulWidget {
  const OurHouseMobile({Key? key}) : super(key: key);

  @override
  State<OurHouseMobile> createState() => _OurHouseMobileState();
}

class _OurHouseMobileState extends State<OurHouseMobile> {
  int pageIndex = 0;
  List<Widget> pages = [
    const MobileFirstScreen(),
    const MobileSecondScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20.0),
              child: TopTitle(text: 'OUR HOUSE'),
            ),
            MobileFirstScreen(),
            // MobileSecondScreen(),
          ],
        ));
  }
}
