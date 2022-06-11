import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String hintText;
  final Color color;
  const TextBox({Key? key, required this.color, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 17, 15, 15),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: color,
                  fontSize: 20,
                  fontFamily: 'Cocomat Ultra'),
            ),
          ),
        ),
      ),
    );
  }
}
