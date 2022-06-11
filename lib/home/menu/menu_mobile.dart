import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuMobile extends StatefulWidget {
  final int index;
  final VoidCallback onClose;
  final Function scrollToIndex;
  const MenuMobile(
      {Key? key,
      required this.onClose,
      required this.scrollToIndex,
      required this.index})
      : super(key: key);

  @override
  State<MenuMobile> createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MenuMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: TopTitle(text: 'MENU'),
          ),
          GestureDetector(
              onTap: () {
                widget.scrollToIndex(0);
                widget.onClose();
              },
              child: Text('SHOWREEL',
                  style: TextStyle(
                      fontFamily: 'Cocomat',
                      fontSize: 25,
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
                  fontSize: 25,
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
                widget.onClose();
              },
              child: Text('CONTACT',
                  style: TextStyle(
                      fontFamily: 'Cocomat',
                      fontSize: 25,
                      color: widget.index == 2
                          ? const Color.fromARGB(255, 70, 69, 69)
                          : Colors.white))),
          const SizedBox(
            height: 200,
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
                  width: 200,
                ),
              ),
              const Expanded(child: SizedBox()),
              InkWell(
                onTap: () => widget.onClose(),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
