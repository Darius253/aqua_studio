import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMobileItems extends StatelessWidget {
  final IconData icon;
  final VoidCallback openMenu;
  final Function scrollToIndex;
  const BottomMobileItems({
    Key? key,
    required this.icon,
    required this.scrollToIndex,
    required this.openMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              scrollToIndex(0);
            },
            child: SvgPicture.asset(
              'assets/images/Black-04.svg',
              width: 200,
              color: Colors.white,
            ),
          ),
          const Expanded(child: SizedBox()),
          InkWell(
              onTap: openMenu,
              child: Icon(
                icon,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
