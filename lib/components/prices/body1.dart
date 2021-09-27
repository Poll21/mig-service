import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../header_with_seachbox.dart';

class BodiPrise1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [

            Container(
              height: 60 + kDefaultPadding * 5,
              padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding * 2),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(kDefaultRadius),
                    bottomRight: Radius.circular(kDefaultRadius)),
                //boxShadow:
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Image.asset('assets/tablet.png'),
                Center(
                  child: PriseTitle(title:'РЕМОНТ ПЛАНШЕТОВ',size: size,),
                )






              ],
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

class PriseTitle extends StatelessWidget {
  const PriseTitle({
    Key key,
    this.title,
    this.size

  }) : super(key: key);

  final String title;
  final Size size;


  @override
  Widget build(BuildContext context){
    return
      Container(
        padding: EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding),
        decoration: BoxDecoration(
          color: kRextColor,
          borderRadius: BorderRadius.all(
              Radius.circular(20)),
        ),
        child: Text(title,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            
          ),
        ),
      );
  }
}

