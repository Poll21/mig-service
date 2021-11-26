import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn ({
    Key key,
    this.title,
    this.kSize,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  final double kSize;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: kDefaultPadding * kSize * 1.8),
      child:
      Container(
      margin: EdgeInsets.only(
          top: kDefaultPadding,
          bottom: kDefaultPadding),
      padding: EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding),
      decoration: BoxDecoration(
        color: kRextColor,
        borderRadius: BorderRadius.all(
            Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 50,
              color: kShadowColor.withOpacity(0.50),
            ),
          ]
      ),
      child: TextButton(
        onPressed: press,
            child: Text(title,
              style:
              TextStyle(
                fontWeight: FontWeight.bold,
                color: kTextColor,
                fontSize: kSize * 3.0,
            ),
        )
      ),
      )
    );
  }
}

