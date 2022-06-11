import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

const pageNames = ['SHOWREEEL', 'OUR HOUSE', 'CONTACT', 'MENU'];

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int pageIndex = 0;
  String currentPage = '';
  bool openMenu = false;
  List<Widget> pages = [
    const ShowReel(),
    const OurHousePage(),
    const ContactPage(),
  ];
  @override
  void initState() {
    super.initState();
    currentPage = pageNames[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
            PageView(
              scrollDirection: Axis.vertical,
              pageSnapping: true,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                  currentPage = pageNames[index];
                });
              },
              controller: _pageController,
              children: pages,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ReponsiveWidget(
                      largeScreen: Padding(
                        padding: const EdgeInsets.only(
                            top: 400, left: 80, right: 80),
                        child: BottomItems(
                          text: currentPage,
                          openMenu: () => setState(() => openMenu = true),
                        ),
                      ),
                      mediumScreen: Padding(
                        padding: const EdgeInsets.only(
                            top: 400, left: 80, right: 80),
                        child: BottomItems(
                          text: currentPage,
                          openMenu: () => setState(() => openMenu = true),
                        ),
                      ),
                      smallScreen: Padding(
                        padding: const EdgeInsets.only(top: 400),
                        child: BottomMobileItems(
                          icon: Icons.menu,
                          openMenu: () => setState(() => openMenu = true),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            AnimatedPositioned(
              left: 0,
              right: 0,
              bottom: 0,
              duration: const Duration(milliseconds: 300),
              top: openMenu ? 0 : MediaQuery.of(context).size.height,
              child: MenuScreen(
                index: pageIndex,
                onClose: () => setState(() => openMenu = false),
                scrollToIndex: (pageIndex) => _pageController.animateTo(
                    pageIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear),
              ),
            )
          ],
        ));
  }
}
