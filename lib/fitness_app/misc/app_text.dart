import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text ;
  final Color color;
  final TextAlign align;
  final FontStyle fontstyle;

  AppText({Key? key,
    this.size = 16,
    required this.text,
    this.align = TextAlign.start,
    this.fontstyle = FontStyle.normal,
    this.color = Colors.black54}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontStyle: fontstyle
      ),
    );
  }
}
