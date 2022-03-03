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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        body:Column(
          children: [
          CustomAppBarOthe(),
          TitlePag(title: 'РЕМОНТ СМАРТФОНОВ'),
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
  }) : super(key: key);

  final double kSize;

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        PriceDetale(image: 'assets/8_fOyVKHrV4.jpg',title: 'Восстановление устройства после удара или попадания жидкости', price:'от 1500р.',kSize: kSize,),
        PriceDetale(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:'от 1000р.',kSize: kSize,),
        PriceDetale(image: 'assets/LCD.jpg',title: 'Замена модуля дисплей + сенсор', price:'от 1000р.',kSize: kSize,),
        PriceDetale(image: 'assets/LCD1.jpg',title: 'Замена дисплея', price:'от 1000р.',kSize: kSize,),
        PriceDetale(image: 'assets/tachskrin.jpg',title: 'Замена сенсора', price:'от 1000р.',kSize: kSize,),
        PriceDetale(image: 'assets/microUSB.jpg',title: 'Замена системного разъема', price:'от 800р.',kSize: kSize,),
        PriceDetale(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:'от 500р.',kSize: kSize,),
        PriceDetale(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:'от 500р.',kSize: kSize,),
        PriceDetale(image: 'assets/recever.jpg',title: 'Замена динамика', price:'от 500р.',kSize: kSize,),
        PriceDetale(image: 'assets/mic.jpg',title: 'Замена микрофоны', price:'от 500р.',kSize: kSize,),
        PriceDetale(image: 'assets/Buser.jpg',title: 'Замена полифонического динамика', price:'от 500р.',kSize: kSize,),
        PriceDetale(image: 'assets/cover.jpg',title: 'Замена корпусных элементов', price:'от 500р.',kSize: kSize,),
        PriceDetale(image: 'assets/cpu_PNG42.png',title: 'Замена микросхемы', price:'от 2500р.',kSize: kSize,),
      ],
    );
  }
}

class PriceDetale extends StatelessWidget {
  const PriceDetale({
    Key key,
    this.image,
    this.title,
    this.price,
    this.kSize,
    this. press,
  }) : super(key: key);
  final String image, title, price;
  final double kSize;
  final press;
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
                    child: Image.asset(image)
                ),
              ),
            ),

            Expanded(
                flex: 5,
                child: Container(
                    padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
                    child: Center(
                        child: Text(title,
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
                    child: Text(price,
                      style: TextStyle(
                        color: kRextColor.withOpacity(0.80),
                          fontSize: kSize * 4.0,
                          fontWeight: FontWeight.bold),)))
          ]
      ),
    );
  }
}