import 'package:flutter/material.dart';

class MobileFirstScreen extends StatelessWidget {
  const MobileFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'We Move\nThe Digital Industry\nForward',
            style: TextStyle(
                height: 1.3,
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'Macaria'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'INTRODUCING A\nNEW AGE OF VISUAL\nIDENTITES',
            style: TextStyle(
                height: 1.3,
                fontSize: 25,
                color: Color.fromARGB(255, 184, 177, 177),
                fontFamily: 'Cocomat Ultra'),
          ),
        ],
      ),
    );
  }
}
