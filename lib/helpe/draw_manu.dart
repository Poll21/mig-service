import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import '../components/constants.dart';
import '../components/expand_menu.dart';



class DrawManu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
    DrawManu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       final double width = MediaQuery.of(context).size.width;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
        height: kDefaultPadding * kMobilSize * 1.2,
        width: width / 2,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 3, horizontal: kDefaultRadius),
          child: Image.asset('assets/logo.png', height: kDefaultPadding),
        ),
      ),
      Expanded(
        child: ExpansionTilE()
      ),
    ]);
  }
}

