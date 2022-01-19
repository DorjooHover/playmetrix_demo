import 'package:flutter/cupertino.dart';
import 'package:playmetrix/pages/navpages/transfer_page.dart';

class TransfersPage extends StatelessWidget {
  const TransfersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          TransferPage(
              totalText: '192₮',
              addText: '+32₮',
              text: 'ARD COIN ADVERTISEMENT'),
          TransferPage(
              totalText: '192₮',
              addText: '+32₮',
              text: 'ARD COIN ADVERTISEMENT'),
          TransferPage(
              totalText: '192₮',
              addText: '+32₮',
              text: 'ARD COIN ADVERTISEMENT'),
        ],
      ),
    );
  }
}
