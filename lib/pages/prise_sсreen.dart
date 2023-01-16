import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/prices/price_list.dart';
import 'package:migservice/controllers/counterController.dart';
import '../components/constants/constants.dart';
import '../components/helpe/costum_appbar.dart';
import '../components/helpe/size_progect.dart';
import '../components/widget/title_page.dart';
import '../components/widget/price_heading.dart';

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
          mobile: PriceHeading( radius: 1, widget: PriseTitl(kSize: kMobilSize, text: 'Деталь'),),
          tablet: PriceHeading(radius: 2, widget: PriseTitl(kSize: kTabletSize, text: 'Деталь'),),
          desktop: PriceHeading(radius: 2, widget: PriseTitl(kSize: kDesktopSize, text: 'Деталь')),
        ),
        Expanded(
          child:
          Responsive(
            mobile: ScrolPrice(
              kSize: kMobilSize ,
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
//генерация скрол-списка прайса
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
              image: smartPrice,
              title: smartPrice,
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

