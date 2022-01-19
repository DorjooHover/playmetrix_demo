import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final FontWeight weight;
  final Color color;
  AppLargeText(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.size = 30,
      this.weight = FontWeight.bold})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );
  }
}
