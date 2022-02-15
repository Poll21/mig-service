import 'package:flutter/material.dart';
import 'constants.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({
    Key key,
    @required this.title,
    this.kSize,
    this.presst,
  }) : super(key: key);
  final String title;
  final double kSize;
  final presst;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kSize * 14.0,
        margin: EdgeInsets.only(
            left: kDefaultPadding / 4,
            right: kDefaultPadding / 4,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 5,
                color: kShadowColor.withOpacity(0.10),
              ),
            ]),
        child: TextButton(
            onPressed: presst,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: kTextColor,
                fontSize: kSize * 2.0,
              ),
            )
        )
    );
  }
}
