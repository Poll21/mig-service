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
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [

              Container(
                height: size.height * 0.15 + kDefaultPadding * 5,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    Image.asset('assets/tablet.png'),
                    Center(
                      child: PriseTitle(title:'РЕМОНТ ПЛАНШЕТОВ',size: size,),
                    ),


                  ],
                ),


              ),
              IconButton(
                  onPressed:  () {},
                  icon: Icon(Icons.maximize_outlined, size: 100, color: kTextColor)),
            ],
          ),


          Expanded(
            flex: 8,
              child: Container(
                margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: kDefaultPadding * 2),
                padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: kDefaultPadding * 2),
                decoration: BoxDecoration(
                  color: kRextColor.shade300,
                  borderRadius: BorderRadius.all(
                       Radius.circular(kDefaultRadius)),
                  //boxShadow:
                ),
                child:
                  Column (
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: kDefaultPadding),
                        child: Text('ВНИМНИЕ!!!',
                          style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: kDefaultPadding),
                        child: Text('В прайсе указана минимальная стоимость услуг, без учета стоимости запчастей и сложности монтажа устройства!!!',
                          style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: kDefaultPadding),
                        child: Text('Уточнить стоимость запчастей и сложность монтажа устройства можно связавшись с нами',
                          style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
              ))
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
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding / 6),
        decoration: BoxDecoration(
          color: kRextColor,
          borderRadius: BorderRadius.all(
              Radius.circular(20)),
        ),
        child: Text(title,
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.05,
          ),
          textAlign: TextAlign.center,
        ),
      );
  }
}

