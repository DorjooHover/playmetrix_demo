import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/widgets/app_text.dart';

class MyPageText extends StatelessWidget {
  final String textKey, textValue;
  const MyPageText({Key? key, required this.textKey, required this.textValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: textKey,
          ),
          AppText(
            text: textValue,
            color: AppColors.color_grey_2,
            size: 14,
          )
        ],
      ),
    );
  }
}
