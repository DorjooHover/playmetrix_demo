import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/widgets/app_text.dart';

class TransferPage extends StatelessWidget {
  final Color bgColor, textColor, totalColor;
  final double textSize, addSize, totalSize;
  final String text, addText, totalText;
  const TransferPage(
      {Key? key,
      this.bgColor = Colors.black87,
      this.totalColor = Colors.white70,
      this.textColor = Colors.white,
      this.textSize = 14,
      this.addSize = 21,
      required this.totalText,
      required this.addText,
      this.totalSize = 15,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.color_grey_1),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white,
                          border: Border.all(width: 2)),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Container(
                        child: Text(
                      text,
                      style: TextStyle(fontSize: textSize, color: textColor),
                    )),
                  ],
                ),
                Container(
                  // width: double.maxFinite,
                  // margin: EdgeInsets.only(left: 20),
                  child: AppText(
                    text: addText,
                    size: addSize,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: AppText(
              text: totalText,
              size: totalSize,
              color: totalColor,
            ),
          )
        ]));
  }
}
