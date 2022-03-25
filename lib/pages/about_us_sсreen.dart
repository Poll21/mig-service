import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/helpe/costum_appbar.dart';
import '../components/constants/constants.dart';
import '../components/helpe/size_progect.dart';
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
            mobile: PriceHeading(radius: 1, widget: AboutUS(radius: 1, kSize: kMobilSize,)),
            tablet: PriceHeading(radius: 2, widget: AboutUS(radius: 2, kSize: kTabletSize,)),
            desktop: PriceHeading(radius: 2, widget: AboutUS(radius: 2, kSize: kDesktopSize,)),
          ),
        ],
      ),
    );
  }
}

class AboutUS extends StatelessWidget {
  final int radius;
  final double kSize;

  const AboutUS({Key key, this.radius, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded( child: Center(

          )),
          Expanded(

            child: ListView(

              children: [
                Container(
                  width: kSize,
                  height: kSize,
                  padding: EdgeInsets.only(top: kDefaultPadding ),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.30),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kDefaultRadius * radius),
                          topRight: Radius.circular(kDefaultRadius * radius))),
                  child: Image.asset('assets/foto_engineer.jpg'),

                )
              ],
            ),
          )
        ]));
  }
}
