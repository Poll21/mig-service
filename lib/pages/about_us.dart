import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/constants.dart';
import '../components/prices/body_prise.dart';
import '../components/size_progect.dart';
import '../components/title_page.dart';
import '../controllers/counterController.dart';
import '../helpe/costum_appbar.dart';

class AboutUsScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  AboutUsScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarOthe(),
          TitlePag(title: 'РЕМОНТ СМАРТФОНОВ'),
          Responsive(
            mobile: PriceHeading(kSize: kMobilSize * 0.8),
            tablet: PriceHeading(kSize: kTabletSize),
            desktop: PriceHeading(kSize: kDesktopSize),
          ),
        ],
      ),);
  }
}