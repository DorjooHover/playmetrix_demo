import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/pages/navpages/my_page.dart';
import 'package:playmetrix/pages/navpages/qr_code_page.dart';
// import 'package:playmetrix/pages/navpages/qr_code_page.dart';
import 'package:playmetrix/pages/navpages/wallet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [const WalletPage(), const MyPage(), const MyPage()];
  bool pageColor = false;
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
      if (index % 3 == 0) {
        pageColor = false;
      } else {
        pageColor = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: (!pageColor) ? Colors.black : Colors.white,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              label: "Wallet",
              icon: Icon(Icons.wallet_giftcard,
                  color: AppColors.color_yellow_1, size: 24),
            ),
            BottomNavigationBarItem(
                label: "QR",
                icon: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.qr_code,
                    color: AppColors.color_yellow_1,
                    size: 24,
                  ),
                )),
            BottomNavigationBarItem(
                label: "User",
                icon: Icon(
                  Icons.person,
                  color: AppColors.color_yellow_1,
                  size: 24,
                ))
          ],
        ),
      ),
    );
  }
}
