import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.kSize,
  }) : super(key: key);

  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
        bottom: kDefaultPadding,

      ),
      height: kDefaultPadding * kSize ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/logo.png', height: kDefaultPadding * kSize),
          Column(
            children: [
              Text(
                'СЕРВИСНЫЙ ЦЕНТР',
                style: TextStyle(
                    fontSize: kMobilSize * 2.5, fontWeight: FontWeight.bold),
              ),
              Text('MIG-SERVICE',
                  style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: kDefaultPadding  * kSize / 3)),
            ],
          ),
          Image.asset('assets/logo_r.png', height: kDefaultPadding * kSize),
        ],
      ),
    );
  }
}
