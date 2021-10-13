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
      padding: EdgeInsets.only(top: kDefaultPadding),
      height: kDefaultPadding * kSize,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 5 + kDefaultPadding,
            ),
            height: kDefaultPadding * kSize - 10,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding * kSize / 8,
                    right: kDefaultPadding * kSize/ 8,
                  ),
                  child:
                  Image.asset('assets/smartphone.png', height: kDefaultPadding * 2 * kSize),
                ),
                Center(
                    child:
                    Container(
                      child:
                      Text('MIG-SERVICE',
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: kDefaultPadding / 2.3 * kSize)
                      ),)
                ),
                Image.asset('assets/computer.png', height: kDefaultPadding * 2 * kSize),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

class Searchr extends StatelessWidget {
  const Searchr({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 3,
        left: 10,
        right: 10,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 50,
                  color: kShadowColor.withOpacity(0.50),
                ),
              ]
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child:
                  TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: 'Поиск',
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Icon(Icons.search, color: kPrimaryColor, size: 30,)
            ],
          ),
        )
    );
  }
}


