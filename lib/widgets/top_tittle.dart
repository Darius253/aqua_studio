import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  final String text;
  const TopTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.circle_rounded,
          color: Colors.white,
          size: 8,
        ),
        const SizedBox(
          width: 12,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 223, 196, 196),
                fontFamily: 'Macaria',
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
