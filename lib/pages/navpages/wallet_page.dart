import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playmetrix/misc/colors.dart';
import 'package:playmetrix/pages/navpages/transfer_page.dart';
import 'package:playmetrix/pages/navpages/transfers_page.dart';
// import 'package:playmetrix/pages/navpages/transfer_page.dart';
import 'package:playmetrix/widgets/app_large_text.dart';
import 'package:playmetrix/widgets/app_text.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
          padding: const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.color_yellow_1,
                    AppColors.color_yellow_2
                  ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppLargeText(
                text: '38000₮',
                weight: FontWeight.normal,
              ),
              const SizedBox(
                height: 15,
              ),
              AppText(
                text: 'PLAYPOINT',
                color: AppColors.color_grey_2,
              )
            ],
          )),
      Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height - 320,
          // width: double.maxFinite,
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 5),
                          child: AppText(
                            text: 'Баасан, 5 сарын 25 2021',
                            color: Colors.white,
                          )),
                      const TransfersPage(),
                    ],
                  ),
                );
                // scrollDirection: ver,
              }))
    ]);

    //
  }
}
