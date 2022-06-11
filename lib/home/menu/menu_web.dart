import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuWeb extends StatefulWidget {
  final int index;
  final VoidCallback onClose;
  final Function scrollToIndex;
  const MenuWeb(
      {Key? key,
      required this.index,
      required this.onClose,
      required this.scrollToIndex})
      : super(key: key);

  @override
  State<MenuWeb> createState() => _MenuWebState();
}

class _MenuWebState extends State<MenuWeb> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 100.0,
        horizontal: 100,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
            onTap: () {
              widget.scrollToIndex(0);
              widget.onClose();
            },
            child: Text('SHOWREEL',
                style: TextStyle(
                    fontFamily: 'Cocomat Ultra',
                    fontSize: 50,
                    color: widget.index == 0
                        ? const Color.fromARGB(255, 70, 69, 69)
                        : Colors.white))),
        const SizedBox(
          height: 60,
        ),
        GestureDetector(
          onTap: () {
            widget.scrollToIndex(1);
            widget.onClose();
          },
          child: Text(
            'OUR HOUSE',
            style: TextStyle(
                fontFamily: 'Cocomat Ultra',
                fontSize: 50,
                color: widget.index == 1
                    ? const Color.fromARGB(255, 70, 69, 69)
                    : Colors.white),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        GestureDetector(
            onTap: () {
              widget.scrollToIndex(2);
            },
            child: Text('CONTACT',
                style: TextStyle(
                    fontFamily: 'Cocomat Ultra',
                    fontSize: 50,
                    color: widget.index == 2
                        ? const Color.fromARGB(255, 70, 69, 69)
                        : Colors.white))),
        const SizedBox(
          height: 150,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home())),
              child: SvgPicture.asset(
                'images/Black-04.svg',
                color: Colors.white,
                width: 480,
              ),
            ),
            const Expanded(child: SizedBox()),
            InkWell(
              onTap: () => widget.onClose(),
              child: const Text(
                'CLOSE',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Macaria',
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
