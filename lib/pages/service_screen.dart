import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/pages/prise_s%D1%81reen.dart';
import '../components/constants/constants.dart';
import '../components/helpe/costum_appbar.dart';
import '../components/helpe/size_progect.dart';
import '../components/prices/price_list.dart';
import '../components/widget/title_page.dart';
import '../components/widget/price_heading.dart';

class ServiceScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  ServiceScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarOthe(),
          TitlePag( title: 'НАШИ УСЛУГИ'),
          Responsive(
            mobile: PriceHeading(radius: 1, widget: PriseTitl(kSize: kMobilSize, text: 'Услуга')),
            tablet: PriceHeading(radius: 2, widget: PriseTitl(kSize: kTabletSize, text: 'Услуга')),
            desktop: PriceHeading(radius: 2, widget: PriseTitl(kSize: kDesktopSize, text: 'Услуга')),
          ),
          Expanded(
            child: Responsive(
              mobile: ScrolPrice(
                kSize: kMobilSize ,
                allPrices: servicePrice,
              ),
              tablet: ScrolPrice(
                kSize: kTabletSize,
                allPrices: servicePrice,
              ),
              desktop: ScrolPrice(
                kSize: kDesktopSize,
                allPrices: servicePrice,
              ),
            ),
          ),
        ]
      ),);
  }
}

