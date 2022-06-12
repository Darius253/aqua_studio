import 'package:aqua_studio/home/menu/menu_mobile.dart';
import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class BottomMobileItems extends StatefulWidget {
  const BottomMobileItems({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomMobileItems> createState() => _BottomMobileItemsState();
}

class _BottomMobileItemsState extends State<BottomMobileItems> {
  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Get.height * 0.02,
        bottom: Get.height * 0.04,
        left: 30,
        right: 20,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              viewController.itemScrollController.scrollTo(
                index: 0,
                curve: Curves.easeInOutCubic,
                duration: const Duration(milliseconds: 1500),
              );
            },
            child: SvgPicture.asset(
              'assets/images/Black-04.svg',
              width: 200,
              color: Colors.white,
            ),
          ),
          const Expanded(child: SizedBox()),
          DelayedDisplay(
            delay: const Duration(milliseconds: 300),
            child: viewController.isMenuOpen.value
                ? InkWell(
                    onTap: () {
                      viewController.isMenuOpen.value = false;
                      Get.back();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ))
                : InkWell(
                    onTap: () {
                      Get.to(
                        () => const MenuMobile(),
                        routeName: 'menu',
                        transition: Transition.downToUp,
                      );
                      viewController.isMenuOpen.value = true;
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
          ),
        ],
      ),
    );
  }
}
