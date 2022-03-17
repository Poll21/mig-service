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
    return CustomSingleChildLayout(

      delegate: MySingleChildLayoutDelegate(),
      child: AlertDialog(
        backgroundColor: kPrimaryColor.withOpacity(0.00),
        title: Container(child: Column(
          children: [
            ButtonMenuItem(
              text: 'Главная',
              function: () {
                Get.to(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));;
              },
              kSize: kSize,
            ),
          ],
        ),)
      ),
    );
  }
}

class MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(-150, -300);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate) {
    return true;
  }
}
