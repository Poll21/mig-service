import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/prices/body_prise.dart';
import 'package:migservice/components/prices/price_list.dart';
import 'package:migservice/controllers/counterController.dart';

import 'bootom_menu.dart';

class SmolBootomMenu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  SmolBootomMenu({
    Key key,
    this.kSize,
  }) : super(key: key);

  final double kSize;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return CustomSingleChildLayout(

      delegate: MySingleChildLayoutDelegate(
          width/4,
          height/2 - kDefaultPadding * kSize * 2.5),
      child: AlertDialog(
        actionsOverflowDirection: VerticalDirection.down,
        elevation: 0,
        backgroundColor: kPrimaryColor.withOpacity(0),
        actions:[
            ButtonMenuItem(
              text: 'Смартфоны',
              function: () {
                Get.offAll(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));
              },
              kSize: kSize,
            ),
            ButtonMenuItem(
              text: 'Планшеты',
              function: () {
                Get.to(BodyPrice(price: 'Планшеты', allPrices: smartPrice));
              },
              kSize: kSize,
            ),ButtonMenuItem(
              text: 'Планшеты',
              function: () {
                Get.to(BodyPrice(price: 'Планшеты', allPrices: tabPrice));
              },
              kSize: kSize,
            ),ButtonMenuItem(
              text: 'Главная',
              function: () {
                Get.to(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));
              },
              kSize: kSize,
            ),ButtonMenuItem(
              text: 'Главная',
              function: () {
                Get.to(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));
              },
              kSize: kSize,
            ),ButtonMenuItem(
              text: 'Главная',
              function: () {
                Get.to(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));
              },
              kSize: kSize,
            ),
          ],

      ),
    );
  }
}



class MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
   MySingleChildLayoutDelegate(this.width, this.height);
   final double  width;
   final double  height;

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(-width, -height);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate) {
    return true;
  }
}
