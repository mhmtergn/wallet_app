import 'package:flutter/material.dart';

const Color kMainColor = Color(0xFF161616);
const Color kAvatarColor = Color(0xFF282A3A);
const Color cardColor = Color(0xFF20bf6b);
const Color bottomNavItemColor = Color(0xFF20bf6b);

const TextStyle? mainTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24);

const TextStyle? subTextStyle = TextStyle(color: Colors.grey, fontSize: 14);

const TextStyle? cardTextStyle =
    TextStyle(color: Colors.white, fontSize: 20, height: 2, letterSpacing: 2);

Color background = Colors.black.withOpacity(0.7);
Color fill = const Color(0xFF20bf6b);
final List<Color> gradient = [
  background,
  background,
  fill,
  fill,
];
const double fillPercent = 60.23; // fills 56.23% for container from bottom
const double fillStop = (100 - fillPercent) / 100;
final List<double> stops = [0.0, fillStop, fillStop, 1.0];
