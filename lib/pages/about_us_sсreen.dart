import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:migservice/components/helpe/costum_appbar.dart';
import 'package:migservice/pages/%D1%81ontact_screen.dart';
import '../components/constants/constants.dart';
import '../components/helpe/size_progect.dart';
import '../components/widget/abaut_us_widget.dart';
import '../components/widget/title_page.dart';
import '../controllers/counterController.dart';
import '../components/widget/price_heading.dart';

class AboutUsScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  AboutUsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarOthe(),
          TitlePag(title: 'О нас:'),
          Responsive(
            mobile: PriceHeading(
                radius: 1,
                widget: Hand(kSize: kMobilSize * 0.5, text: 'ИП Мальцев С.В.')),
            tablet: PriceHeading(
                radius: 2,
                widget:
                    Hand(kSize: kTabletSize * 0.5, text: 'ИП Мальцев С.В.')),
            desktop: PriceHeading(
                radius: 2,
                widget:
                    Hand(kSize: kDesktopSize * 0.5, text: 'ИП Мальцев С.В.')),
          ),
        Container(
          width: double.infinity,
            color: kPrimaryColor.withOpacity(0.30),
            child: Center(
              child: Text('Ваше устройство в надежных руках:',
                  style: TextStyle(
                    color: kRextColor,
                    fontSize: kDesktopSize * 4,

                  )),
            )),
          Responsive(
            mobile: AboutUS(radius: 1, kSize: kMobilSize),
            tablet: AboutUS(radius: 2, kSize: kTabletSize),
            desktop: AboutUS(radius: 2, kSize: kDesktopSize),
          ),
        ],
      ),
    );
  }
}



