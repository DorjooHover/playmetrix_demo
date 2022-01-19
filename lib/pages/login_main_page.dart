import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/pages/main_page.dart';
import 'package:playmetrix/widgets/responsive_btn.dart';

class LoginMainPage extends StatelessWidget {
  const LoginMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned(
                top: 150,
                child: Container(
                  padding: const EdgeInsets.only(top: 500),
                  width: MediaQuery.of(context).size.width,
                  height: 800,
                  decoration: BoxDecoration(
                      color: AppColors.color_yellow_1,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        },
                        child: ResponsiveButton(
                          text: "Дараагийн",
                          color: Colors.white,
                          width: 245,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.pop(context);
                      //   },
                      //   child: ResponsiveButton(
                      //     text: "Буцах",
                      //     color: Colors.white,
                      //     width: 245,
                      //   ),
                      // )
                    ])
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
