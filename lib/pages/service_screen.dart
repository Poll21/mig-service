import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/costum_appbar.dart';

import '../components/constants.dart';
import '../components/size_progect.dart';
import '../components/title_page.dart';
import '../helpe/price_heading.dart';

class ServiceScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  ServiceScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarOthe(),
          TitlePag(
            title: 'НАШИ УСЛУГИ',
          ),
          Responsive(
            mobile: PriceHeading(kSize: kMobilSize, k: 1, text: 'Услуга'),
            tablet: PriceHeading(kSize: kTabletSize, k: 2, text: 'Услуга'),
            desktop: PriceHeading(kSize: kDesktopSize, k: 2, text: 'Услуга'),
          ),
        ]
      ),);
  }
}