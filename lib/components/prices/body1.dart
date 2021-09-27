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

              constraints: BoxConstraints(
                minHeight: kDefaultPadding * 20
              ),


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

                PriseTitle(title:'РЕМОНТ ПЛАНШЕТОВ')




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

class PriseTitle extends StatelessWidget {
  const PriseTitle({
    Key key,
    this.title
  }) : super(key: key);

  final String title;

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
          style: Theme.of(context).textTheme.headline5.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      );
  }
}

