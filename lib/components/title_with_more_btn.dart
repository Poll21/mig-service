import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn ({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      padding: EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding),
      decoration: BoxDecoration(
        color: kRextColor,
        borderRadius: BorderRadius.all(
            Radius.circular(20)),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: Theme.of(context).textTheme.headline6.copyWith(
          fontWeight: FontWeight.bold),
          primary: kTextColor
        ),
        onPressed: () {},
        child: Text('СРОЧНЫЙ РЕМОНТ'),
      )
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
                text,
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding /4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}