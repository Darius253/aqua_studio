import 'package:flutter/material.dart';

class MobileTextBox extends StatelessWidget {
  final String hintText;
  final Color color;
  const MobileTextBox({Key? key, required this.color, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 17, 15, 15),
        shape: BoxShape.rectangle,
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
              color: color, fontSize: 10, fontFamily: 'Cocomat Ultra'),
        ),
      ),
    );
  }
}
