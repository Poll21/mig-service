import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../header_with_seachbox.dart';

class BodyPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        HeaderWithSearchBox(),
        PriseTitle(title: 'РЕМОНТ СМАРТФОНОВ'),
        Container(
          //color: Colors.white,
          margin: EdgeInsets.only(top: kDefaultPadding),
          child:
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Expanded(
                  flex: 1,
                  child:
                  Column(
                      children:[
                      CustomScrollView(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        slivers: <Widget>[
                          SliverPadding(
    padding: const EdgeInsets.all(20.0),
    sliver: SliverList(
    delegate: SliverChildListDelegate( <Widget>[
    Container(
    margin: EdgeInsets.only(
    left: kDefaultPadding,
    top: kDefaultPadding,
    right: kDefaultPadding,
    bottom: kDefaultPadding),
    child: Image.asset('assets/smartphone.png', height: 100,)
    ),
    Container(
    margin: EdgeInsets.only(
    top: kDefaultPadding),
    child: Text('ВНИМНИЕ!!!',
    style: TextStyle(color: kRextColor,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    margin: EdgeInsets.only(
    top: kDefaultPadding),
    child: Text('В прайсе указана минимальная стоимость услуг, без учета стоимости запчастей и сложности монтажа устройства!!!',
    style: TextStyle(color: kRextColor,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    margin: EdgeInsets.only(
    top: kDefaultPadding),
    child: Text('Уточнить стоимость запчастей и сложность монтажа устройства можно связавшись с нами',
    style: TextStyle(color: kRextColor,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    ),
    ],
    )
    ),
    ),
                        ]
                      ),
                      ]

                  ),
                ),

                Expanded(
                    flex: 3,
                  child:
                    Expanded(
                          child: Container(
                            height: 400,
                              margin: EdgeInsets.only(
                                  top: kDefaultPadding),
                              padding: EdgeInsets.only(
                                  left: kDefaultPadding,
                                  top: kDefaultPadding),
                              decoration: BoxDecoration(
                                color: kPrimaryColor.withOpacity(0.8),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30)
                                ),
                              ),
                              child:PrisSmart()

                      ),

                    ),
                )
              ]
          ),
        ),
    ]
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
        style: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
class PrisSmart extends StatelessWidget {
  const PrisSmart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        children:[
          PlantPiseSmart(
            image:'assets/FPC.jpg',
            title: 'Замена межплатного шлейфа',
            prise: '800',
            press: () {},),
          PlantPiseSmart(
            image:'assets/LCD.jpg',
            title: 'Замена модуля дисплей + сенсор'
                '',
            prise: '800',
            press: () {},),
          PlantPiseSmart(
            image:'assets/FPC.jpg',
            title: 'Замена межплатного шлейфа',
            prise: '800',
            press: () {},),
          PlantPiseSmart(
            image:'assets/FPC.jpg',
            title: 'Замена межплатного шлейфа',
            prise: '800',
            press: () {},),
        ]

    );
  }
}

class PlantPiseSmart extends StatelessWidget {
  const PlantPiseSmart({
    Key key,
    this.image,
    this.title,
    this.prise,
    this.press,
  }) : super(key: key);

  final String image, title, prise;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 1,
              child:
              Container(
                decoration: BoxDecoration(
                  color: kTextColor,
                  borderRadius:BorderRadius.all(Radius.circular(15)),),
                padding: EdgeInsets.all(kDefaultPadding / 2),
                height: kDefaultPadding * 6,
                child:  Image.asset(image,
                ),
              )),
          Expanded(
              flex: 3,
              child:
              Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  child:
                  Text(title,
                      style: TextStyle(
                        color: kTextColor,

                      ),
                      textAlign: TextAlign.center))),
          Expanded(
              flex: 1,
              child:
              Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  child:Text(prise + 'р.',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,

                      ),
                      textAlign: TextAlign.center
                  ))),
        ],
      );

  }
  }
