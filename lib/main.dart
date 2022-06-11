import 'package:flutter/material.dart';
import 'package:aqua_studio/shared/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aqua Studio',
      theme: ThemeData(
      ),
      home: const SplashScreen(),
    );
  }
}

class Fonts {
  static const String macaria = 'Macaria';

  static const String cocomat = 'Cocomat';
}
