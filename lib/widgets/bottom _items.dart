import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/exports.dart';

class BottomItems extends StatelessWidget {
  final VoidCallback openMenu;
  final String text;
  const BottomItems({
    Key? key,
    required this.openMenu,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
          child: SvgPicture.asset(
            'assets/images/Black-04.svg',
            color: Colors.white,
            width: 480,
          ),
        ),
        const Expanded(child: SizedBox()),
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Macaria',
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          width: 20,
        ),
        const Center(
          child:  Icon(
            Icons.circle_rounded,
            color: Colors.white,
            size: 8,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: openMenu,
          child: const Text(
            'MENU',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Macaria',
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
