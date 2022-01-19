import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/pages/navpages/my_page_text.dart';
import 'package:playmetrix/widgets/app_large_text.dart';
import 'package:playmetrix/widgets/app_text.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
        width: double.maxFinite,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [AppLargeText(text: "Хувийн мэдээлэл")],
            ),
            Container(
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                padding: EdgeInsets.all(15),
                // padding: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: AppColors.color_yellow_1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    color: AppColors.color_grey_4),
                child: const Image(
                    width: 130,
                    height: 130,
                    image: AssetImage('img/tomor.png'),
                    fit: BoxFit.cover
                    // fit: BoxFit.fill,
                    )),
            Container(
                margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
                decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.grey))),
                child: Column(
                  children: const [
                    MyPageText(textKey: "Нэр", textValue: "BatDorj"),
                    MyPageText(textKey: "Утасны дугаар", textValue: "99110011"),
                    MyPageText(
                        textKey: "И-мейл хаяр",
                        textValue: "Bat.Dorj9911@gmail.com"),
                    MyPageText(
                        textKey: "Дансны дугаар", textValue: "5411994511"),
                  ],
                ))
          ],
        ));
  }
}
