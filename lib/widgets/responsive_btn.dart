import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width, size;
  String text;
  Color color;
  ResponsiveButton(
      {Key? key,
      required this.color,
      required this.text,
      this.size = 20,
      this.width = 245,
      this.isResponsive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 54,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(55), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: size, color: Colors.black),
          )
        ],
      ),
    );
  }
}
