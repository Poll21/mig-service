import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      height: kDefaultPadding * 7,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 30 + kDefaultPadding,
            ),
            height: kDefaultPadding * 7 - 20,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )
            ),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: kDefaultPadding * 2.4 ),
                  child:
                    Image.asset('assets/smartphone.png', height: kDefaultPadding * 4),
                ),
                Center(
                child:
                  Text('MIG-SERVICE',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                ),

                Image.asset('assets/computer.png', height: kDefaultPadding * 3),
              ],
            ),
          ),
          Positioned(
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
          )
        ],
      ),
    );
  }
}



