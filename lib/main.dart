import 'package:flutter/material.dart';
import 'package:playmetrix/pages/login_main_page.dart';
import 'package:playmetrix/pages/login_page.dart';
import 'package:playmetrix/pages/main_page.dart';
import 'package:playmetrix/pages/navpages/transfer_page.dart';
import 'package:playmetrix/pages/navpages/wallet_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const LoginPage());
  }
}
