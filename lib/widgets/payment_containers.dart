import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

// ignore: must_be_immutable
class PaymentsContainer extends StatelessWidget {
  PaymentsContainer(
      {Key? key,
      required this.icon,
      required this.upText,
      required this.downText,
      required this.money})
      : super(key: key);

  IconData? icon;
  String? upText;
  String? downText;
  String? money;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [cardColor, Colors.black],
          // stops: stops,
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.black12),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Column(
          children: [
            FaIcon(
              icon,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              upText!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              downText!,
              style: subTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              money!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
