import 'dart:async';
import 'package:flutter/material.dart';
import 'package:aqua_studio/shared/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showSplash = true;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 2000),
      () => setState(() => showSplash = false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showSplash
          ? Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: SvgPicture.asset(
                  'assets/images/Logo_White.svg',
                  color: Colors.white,
                ),
              ),
            )
          : const DelayedDisplay(
              child: Home(),
              slidingBeginOffset: Offset(0, 0),
              fadingDuration: Duration(milliseconds: 500),
            ),
    );
  }
}
