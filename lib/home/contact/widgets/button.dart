import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      color: Colors.white,
      child: Center(
          child: IconButton(
        icon: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
          size: 15,
        ),
        onPressed: () {},
      )),
    );
  }
}
