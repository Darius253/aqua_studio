import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final PageController _pageController = PageController();
  int pageIndex = 0;
  List<Widget> pages = [
    const ContactFirstScreen(),
    const ContactSecondScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20.0),
              child: TopTitle(text: 'CONTACT'),
            ),
            PageView(
              pageSnapping: true,
              scrollDirection: Axis.vertical,
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
