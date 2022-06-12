import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

const pageNames = ['SHOWREEEL', 'OUR HOUSE', 'CONTACT', 'MENU'];

class Home extends StatefulWidget {
  final Function? scrollToIndex;
  const Home({Key? key, this.scrollToIndex}) : super(key: key);

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ReponsiveWidget(
                    largeScreen: Padding(
                      padding: const EdgeInsets.only(
                        top: 600,
                        left: 80,
                        right: 80,
                      ),
                      child: BottomItems(
                        scrollToIndex: (pageIndex) => widget.scrollToIndex!(0),
                        text: currentPage,
                        openMenu: () => setState(() => openMenu = true),
                      ),
                    ),
                    mediumScreen: Padding(
                      padding: const EdgeInsets.only(
                        top: 450,
                        left: 80,
                        right: 80,
                      ),
                      child: BottomItems(
                        scrollToIndex: (pageIndex) => widget.scrollToIndex!(0),
                        text: currentPage,
                        openMenu: () => setState(() => openMenu = true),
                      ),
                    ),
                    smallScreen: Padding(
                      padding: const EdgeInsets.only(top: 550),
                      child: BottomMobileItems(
                        scrollToIndex: (pageIndex) => widget.scrollToIndex!(0),
                        icon: Icons.menu,
                        openMenu: () => setState(() => openMenu = true),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 5),
              child: PageView(
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                    currentPage = pageNames[index];
                  });
                },
                controller: _pageController,
                children: pages,
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
