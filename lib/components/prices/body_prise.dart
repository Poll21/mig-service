import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/costum_appbar.dart';
import '../constants.dart';
import '../size_progect.dart';
import '../title_page.dart';


class BodyPrice extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final String priceALL;

  BodyPrice({Key key, this.priceALL}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        body:Column(
          children: [
          CustomAppBarOthe(),
          TitlePag(title: 'РЕМОНТ ' + priceALL,),
          Responsive(
              mobile: PriceHeading(kSize: kMobilSize * 0.8),
              tablet: PriceHeading(kSize: kTabletSize),
              desktop: PriceHeading(kSize: kDesktopSize),
          ),
          Expanded(
              child:  Responsive(
                mobile: ScrolPrice(kSize: kMobilSize * 0.8),
                tablet: ScrolPrice(kSize: kTabletSize),
                desktop: ScrolPrice(kSize: kDesktopSize),
              ),
          ),
        ]
    ),

    );
  }
}




class PriceHeading extends StatelessWidget {
  const PriceHeading({
    Key key,
    this.kSize,
  }) : super(key: key);

  final double kSize;

  @override
Widget build(BuildContext context) {
return Container(
  height: 80,
 padding: EdgeInsets.only(top: kDefaultPadding * 2),
  decoration: BoxDecoration(
      color: kPrimaryColor.withOpacity(0.30),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kDefaultRadius * 2),
          topRight: Radius.circular(kDefaultRadius * 2) )
  ),
  child:
  Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child:
              Text( 'Дталь',textAlign:
              TextAlign.center,
              style: TextStyle(
                    fontSize: kSize * 3.0,
                    fontWeight: FontWeight.bold),)
            ),
          ),

        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
            child: Center(
              child:
              Text( 'Описание услуги',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: kSize * 3.0, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Center(
                child:
                Text( 'Стоимость', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: kSize * 3.0, fontWeight: FontWeight.bold))
            ),
          ),
        ),
      ]
  ),
);
}
}

class ScrolPrice extends StatelessWidget {
  const ScrolPrice({
    Key key,
    this.kSize,
    this.priceALL,
  }) : super(key: key);

  final double kSize;
  final String priceALL;

  @override
  Widget build(BuildContext context) {
    if (priceALL == 'СМАРТФОНОВ'){
       final List<Widget>  fild  = smartPrice.map((PriceString smartPrice) => PriceDetale(
         title: smartPrice,
         image: smartPrice,
         price: smartPrice,
         kSize: kSize,))
           .toList();;
    }else{}
    final List<Widget>
    textFields = //списку виджетов присваивается значение интерируемого листа
    smartPrice
        .map((PriceString smartPrice) => PriceDetale(
      title: smartPrice,
      image: smartPrice,
      price: smartPrice,
      kSize: kSize,))
        .toList();

    return  ListView(
      scrollDirection: Axis.vertical,
      children: fild,
    );
  }
}

class PriceDetale extends StatelessWidget {
  final PriceString image, title, price;
  final double kSize;
  const PriceDetale({
    Key key,
    this.image,
    this.title,
    this.price,
    this.kSize,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.withOpacity(0.30),
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
                    width: kImagePrice * kSize,
                    height: kImagePrice * kSize,
                    padding: EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius))
                    ),
                    child: Image.asset(image.image)
                ),
              ),
            ),

            Expanded(
                flex: 5,
                child: Container(
                    padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
                    child: Center(
                        child: Text(title.title,
                          style: TextStyle(
                              fontSize: kSize * 3.5,
                              ),
                        )
                    )
                )
            ),
            Expanded(
                flex: 2,
                child: Center(
                    child: Text('${price.price}'+ 'р.',
                      style: TextStyle(
                        color: kRextColor.withOpacity(0.80),
                          fontSize: kSize * 4.0,
                          fontWeight: FontWeight.bold),)))
          ]
      ),
    );
  }
}

class PriceString { //класс который хранит две текстовах строки и картинку
  final String title;
  final double price;
  final String image;



  PriceString({
    this.title,
    this.price,
    this.image,
  });
}


List<PriceString> smartPrice = [
  PriceString(image: 'assets/8_fOyVKHrV4.jpg',title: 'Восстановление устройства после удара или попадания жидкости', price:1500,),
  PriceString(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:1000),
  PriceString(image: 'assets/LCD.jpg',title: 'Замена модуля дисплей + сенсор', price:1000,),
  PriceString(image: 'assets/LCD1.jpg',title: 'Замена дисплея', price:1000),
  PriceString(image: 'assets/tachskrin.jpg',title: 'Замена сенсора', price:1000),
  PriceString(image: 'assets/microUSB.jpg',title: 'Замена системного разъема', price:1000),
  PriceString(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:500),
  PriceString(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:500,),
  PriceString(image: 'assets/recever.jpg',title: 'Замена динамика', price:500),
  PriceString(image: 'assets/mic.jpg',title: 'Замена микрофоны', price:500),
  PriceString(image: 'assets/Buser.jpg',title: 'Замена полифонического динамика', price:500),
  PriceString(image: 'assets/cover.jpg',title: 'Замена корпусных элементов', price:500),
  PriceString(image: 'assets/cpu_PNG42.png',title: 'Замена микросхемы', price:2500),
];
List<PriceString> tabPrice = [
  PriceString(image: 'assets/8_fOyVKHrV4.jpg',title: 'Восстановление устройства после удара или попадания жидкости', price:1500,),
  PriceString(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:1000),
  PriceString(image: 'assets/LCD.jpg',title: 'Замена модуля дисплей + сенсор', price:1000,),
  PriceString(image: 'assets/LCD1.jpg',title: 'Замена дисплея', price:1000),
  PriceString(image: 'assets/tachskrin.jpg',title: 'Замена сенсора', price:1000),
  PriceString(image: 'assets/microUSB.jpg',title: 'Замена системного разъема', price:1000),
  PriceString(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:500),
  PriceString(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:500,),
  PriceString(image: 'assets/recever.jpg',title: 'Замена динамика', price:500),
  PriceString(image: 'assets/mic.jpg',title: 'Замена микрофоны', price:500),
  PriceString(image: 'assets/Buser.jpg',title: 'Замена полифонического динамика', price:500),
  PriceString(image: 'assets/cover.jpg',title: 'Замена корпусных элементов', price:500),
  PriceString(image: 'assets/cpu_PNG42.png',title: 'Замена микросхемы', price:2500),
];