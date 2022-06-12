import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class MenuMobile extends StatefulWidget {
  const MenuMobile({Key? key}) : super(key: key);

  @override
  State<MenuMobile> createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MenuMobile> {
  final ViewController viewController = Get.find();
  final List<String> pages = ['SHOWREEL', 'OUR HOUSE', 'CONTACT'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 100.0,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(pages.length, (index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () async {
                          viewController.isMenuOpen.value = false;
                          viewController.currentViewIndex.value = index;
                          Get.back();
                          await Future.delayed(
                            const Duration(milliseconds: 300),
                          );
                          viewController.itemScrollController.scrollTo(
                            index: index,
                            curve: Curves.easeInOutCubic,
                            duration: const Duration(milliseconds: 2000),
                          );
                        },
                        child: Text(
                          pages[index],
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Cocomat Ultra',
                            color:
                                index == viewController.currentViewIndex.value
                                    ? const Color.fromARGB(255, 70, 69, 69)
                                    : Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 60.0),
                    ],
                  );
                }),
              ),
            ),
          ),
          const BottomMobileItems(),
        ],
      ),
    );
  }
}
