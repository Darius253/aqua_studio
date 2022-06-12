import 'dart:async';
import 'package:aqua_studio/home/homepage/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: SizedBox(
        height: 100,
        width: 100,
        child: SvgPicture.asset(
          'assets/images/Logo_White.svg',
          color: Colors.white,
        ),
      )),
    );
  }
}
