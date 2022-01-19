import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/pages/login_main_page.dart';
import 'package:playmetrix/widgets/app_large_text.dart';
import 'package:playmetrix/widgets/responsive_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        margin: const EdgeInsets.only(bottom: 150, top: 200),
        child: SizedBox(
          width: 245,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 245,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Image(
                          image: AssetImage('img/logo.png'),
                          width: 245,
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginMainPage()));
                          },
                          child: ResponsiveButton(
                            text: "Нэвтрэх",
                            color: AppColors.color_yellow_1,
                          ),
                        ),
                        const Text(
                          "Facebook-ээр нэвтрэх",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline),
                        ),
                      ])),
            ],
          ),
          // Column(

          // )
        ),
      ),
    );
  }
}
