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
  int pageIndex = 0;
  bool openMenu = false;
  List<Widget> pages = [
    const ShowReel(),
    const OurHousePage(),
    const ContactPage(),
  ];

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  late final ViewController viewController;

  @override
  void initState() {
    super.initState();
    Get.put(ViewController());
    viewController = Get.find();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ScrollablePositionedList.builder(
              shrinkWrap: true,
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index],
              itemPositionsListener: itemPositionsListener,
              itemScrollController: viewController.itemScrollController,
            ),
          ),
          ReponsiveWidget(
            largeScreen: const NavBar(),
            mediumScreen: const NavBar(),
            smallScreen: Padding(
              padding: const EdgeInsets.only(top: 550),
              child: BottomMobileItems(
                scrollToIndex: (pageIndex) => widget.scrollToIndex!(0),
                icon: Icons.menu,
                openMenu: () => setState(() => openMenu = true),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
