import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../header_with_seachbox.dart';

class BodiPrise1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
          flex: 2,
            child:Container(

              padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding *2),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(kDefaultRadius),
                    bottomRight: Radius.circular(kDefaultRadius)),
                //boxShadow:
              ),
              child: Row(
              children: <Widget>[

                Image.asset('assets/tablet.png'),
                Text('Ремонт планшетов')

              ],
            ),


            ),
        ),
          Expanded(
            flex: 8,
              child: Container())
        ],
      ),


    );
  }
}
