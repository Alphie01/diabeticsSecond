import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fitness_app_theme.dart';
class AppLargeText extends StatelessWidget {
  double size;
  final String text ;
  final Color color;
  final TextAlign align;
  AppLargeText({Key? key,
    this.size = 30,
    required this.text,
    this.align = TextAlign.start,
    this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FitnessAppTheme.fontName,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: 0.5,
        color: FitnessAppTheme.lightText,
      ),
    );
  }
}

