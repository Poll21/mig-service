import 'package:flutter/material.dart';
import '../constants/constants.dart';

// шапка прайса
class PriceHeading extends StatelessWidget {
  final Widget widget;
  final  int radius;

  const PriceHeading({
    Key key, this.widget, this.radius,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: kDefaultPadding ),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.30),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kDefaultRadius * radius),
              topRight: Radius.circular(kDefaultRadius * radius))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding),
        child: widget
      ),
    );
  }
}

class PriseTitl extends StatelessWidget {
  final double kSize;
  final String text;

  const PriseTitl({Key key, this.kSize, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: kSize * 3.0, fontWeight: FontWeight.bold),
                )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
              child: Center(
                child: Text('Описание услуги',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: kSize * 3.0, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                  child: Text('Стоимость',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: kSize * 3.0,
                          fontWeight: FontWeight.bold))),
            ),
          ),
        ]);
  }
}
