import 'package:aqua_studio/home/menu/menu_mobile.dart';
import 'package:aqua_studio/home/menu/menu_web.dart';
import 'package:flutter/material.dart';
import 'package:aqua_studio/shared/exports.dart';

class MenuScreen extends StatefulWidget {
  final int index;
  final VoidCallback onClose;
  final Function scrollToIndex;
  const MenuScreen({
    Key? key,
    required this.index,
    required this.onClose,
    required this.scrollToIndex,
  }) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: ReponsiveWidget(
        largeScreen: MenuWeb(),
        mediumScreen: MenuWeb(),
        smallScreen: MenuMobile(),
      ),
    );
  }
}
