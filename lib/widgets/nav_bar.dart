// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:aqua_studio/home/menu/menu_web.dart';
import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      late String title;
      if (viewController.currentView.value == Views.reel) {
        title = 'SHOWREEL';
      } else if (viewController.currentView.value == Views.ourHouse) {
        title = 'OUR HOUSE';
      } else {
        title = 'CONTACT';
      }
      return Padding(
        padding: EdgeInsets.only(
          top: Get.height * 0.02,
          bottom: Get.height * 0.04,
          left: Doubles.horizontalMargin,
          right: Doubles.horizontalMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => html.window.location.reload(),
              child: SvgPicture.asset(
                'assets/images/Black-04.svg',
                color: Colors.white,
                // width: 450,
                height: Get.height * 0.06,
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: viewController.isMenuOpen.value
                  ? InkWell(
                      onTap: () {
                        viewController.isMenuOpen.value = false;
                        Get.back();
                      },
                      child: const Text(
                        'CLOSE',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontFamily: 'Macaria',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        viewController.isMenuOpen.value
                            ? const SizedBox.shrink()
                            : Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontFamily: 'Macaria',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                        const SizedBox(width: 28.0),
                        const Center(
                          child: Icon(
                            Icons.circle_rounded,
                            size: 8.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 28.0),
                        InkWell(
                          onTap: () {
                            Get.to(
                              () => const MenuWeb(),
                              routeName: 'menu',
                              transition: Transition.downToUp,
                            );
                            viewController.isMenuOpen.value = true;
                          },
                          child: const Text(
                            'MENU',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'Macaria',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      );
    });
  }
}
