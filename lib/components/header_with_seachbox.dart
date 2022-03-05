import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  final double kSize;

  const HeaderWithSearchBox({
    Key key,
    @required this.kSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.only(bottom: kDefaultPadding),
            height: kDefaultPadding * kSize,
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/logo.png',height: kDefaultPadding * kSize)),
                Expanded(
                  flex: 3,
                  child:
                  Column(

                    children: [
                    Center(
                      child: FittedBox(
                        child: Text(
                        'СЕРВИСНЫЙ ЦЕНТР',
                        style: TextStyle(fontSize: kSize * 3, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                    Center(
                      child: FittedBox(
                        child: Text('MIG-SERVICE',
                          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold, fontSize: kSize * 7)),
                      ),
                    ),
                  ],
                ),),
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/logo_r.png',
                  height: kDefaultPadding * kSize)),
            ],
        ),
    ));
  }
}
