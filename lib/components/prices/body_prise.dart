import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/pages/costum_appbar.dart';
import 'package:migservice/pages/home_screen.dart';
import '../constants.dart';
import '../title_page.dart';


class BodyPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        body:Column(
          children: [
          CustomAppBar(
            icon: Icons.arrow_back_outlined,
                  pressIcon: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))
          ),
          TitlePag(title: 'РЕМОНТ СМАРТФОНОВ'),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultRadius * 2),
                  topRight: Radius.circular(kDefaultRadius * 2) )
            ),
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Container(
                        child:
                        Text( 'Дталь',textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Container(
                        child:
                        Text( 'Описание услуги',textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                          child:
                          Text( 'Стоимость услуги', textAlign: TextAlign.center,)
                      ),
                    ),
                  ),
                ]
            ),
          ),

          Expanded(
              child: ListView(
                     scrollDirection: Axis.vertical,
                     children: <Widget>[
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                       PriseDetale(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:'800р.'),
                       PriseDetale(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:'800р.'),
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                       PriseDetale(image: 'assets/LCD.jpg',title: 'Замена дисплейного модуля', price:'800р.'),
                     ],
                   )),
        ]
    ),

    );
  }
}

class PriseDetale extends StatelessWidget {
  const PriseDetale({
    Key key,
    this.image,
    this.title,
    this.price,
    this.kSize,
    this. press,
  }) : super(key: key);
  final String image, title, price;
  final int kSize;
  final press;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: kDefaultPadding),
              width: kCardDefaultHeigth,
              height: kCardDefaultHeigth,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius))
              ),
              child: Image.asset(image)
            ),
          ),
        ),

        Expanded(
          flex: 4,
            child: Center(child: Text(title, style: TextStyle(color: kTextColor),))),
        Expanded(
          flex: 1,
            child: Center(child: Text(price)))
      ]
      ),
    );
  }
}
