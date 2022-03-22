import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/costum_appbar.dart';
import '../components/constants.dart';
import '../components/size_progect.dart';
import '../components/title_page.dart';

class BodyPrice extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  final String price;
  List<PriceString> allPrices;

  BodyPrice({Key key, this.price, this.allPrices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: Column(children: [
        CustomAppBarOthe(),
        TitlePag(
          title: 'РЕМОНТ ' + price,
        ),
        Responsive(
          mobile: PriceHeading(kSize: kMobilSize * 0.8),
          tablet: PriceHeading(kSize: kTabletSize),
          desktop: PriceHeading(kSize: kDesktopSize),
        ),
        Expanded(
          child: Responsive(
            mobile: ScrolPrice(
              kSize: kMobilSize * 0.8,
              allPrices: allPrices,
            ),
            tablet: ScrolPrice(
              kSize: kTabletSize,
              allPrices: allPrices,
            ),
            desktop: ScrolPrice(
              kSize: kDesktopSize,
              allPrices: allPrices,
            ),
          ),
        ),
      ]),
    );
  }
}
//шапка прайса
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
              topRight: Radius.circular(kDefaultRadius * 2))),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                'Дталь',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: kSize * 3.0, fontWeight: FontWeight.bold),
              )),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(
                    left: kDefaultPadding, right: kDefaultPadding),
                child: Center(
                  child: Text('Описание услуги',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: kSize * 3.0, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                    child: Text('Стоимость',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: kSize * 3.0,
                            fontWeight: FontWeight.bold))),
              ),
            ),
          ]),
    );
  }
}

class ScrolPrice extends StatelessWidget {
  final double kSize;
  final List<PriceString> allPrices;

  const ScrolPrice({
    Key key,
    this.kSize,
    this.allPrices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> priceItem = allPrices
        .map((PriceString smartPrice) => PriceDetale(
              title: smartPrice,
              image: smartPrice,
              price: smartPrice,
              kSize: kSize,
            ))
        .toList();
    return ListView(
      scrollDirection: Axis.vertical,
      children: priceItem,
    );
  }
}
//строка прайс листа
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
                        borderRadius:
                            BorderRadius.all(Radius.circular(kDefaultRadius))),
                    child: Image.asset(image.image)),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                    padding: EdgeInsets.only(
                        left: kDefaultPadding, right: kDefaultPadding),
                    child: Center(
                        child: Text(
                      title.title,
                      style: TextStyle(
                        fontSize: kSize * 3.5,
                      ),
                    )))),
            Expanded(
                flex: 2,
                child: Center(
                    child: Text(
                  '${price.price}' + 'р.',
                  style: TextStyle(
                      color: kRextColor.withOpacity(0.80),
                      fontSize: kSize * 4.0,
                      fontWeight: FontWeight.bold),
                )))
          ]),
    );
  }
}
//класс который хранит ссылку на изображение, описание ицену услуги
class PriceString {
  final String title, image;
  final double price;
  PriceString({
    this.title,
    this.price,
    this.image,
  });
}
