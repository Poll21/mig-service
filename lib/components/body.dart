import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/prices/body_prise.dart';
import 'package:migservice/components/size_progect.dart';



class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
      Responsive(
        mobile: StartMenu(kSize: kMobilSize, kCross: 2,),
        tablet: StartMenu(kSize: kTabletSize, kCross: 3),
        desktop: StartMenu(kSize: kDesktopSize, kCross: 3),
    ),
   );
 }
}


class StartMenu extends StatelessWidget {
  const StartMenu ({
    Key key,
    this.kSize,
    this.kCross
  }) : super(key: key);
  final double kSize;
  final int kCross;

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(kDefaultPadding * 2),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: kCross,
          mainAxisSpacing: kDefaultPadding * 2,
          crossAxisSpacing: kDefaultPadding * 3,
          childAspectRatio: 0.15 * kSize,
      ),
      children: [
        PlantCard(
          image: 'assets/smartphone.png',
          title: 'СМАРТФОНОВ',
          kSize: kSize,
          press: () {Get.to(BodyPrice(priceALL: 'СМАРТФОНОВ',));},
        ),
        PlantCard(
          image: 'assets/tablet.png',
          title: 'ПЛАНШЕТОВ',
          kSize: kSize,
          press: () {Get.to(BodyPrice(priceALL: 'ПЛАНШЕТОВ',));},
        ),
        PlantCard(
          image: 'assets/noteboock.png',
          title: 'НОУТБУКОВ',
          kSize: kSize,
          press: () {Get.to(BodyPrice(priceALL: 'НОУТБУКОВ',));},
        ),
        PlantCard(
          image: 'assets/computer.png',
          title: 'КОМПЬЮТЕРОВ',
          kSize: kSize,
          press: () {Get.to(BodyPrice(priceALL: 'КОМПЬЮТЕРОВ',));},
        ),
        PlantCard(
          image: 'assets/TV.png',
          title: 'ТЕЛЕВИЗОРОВ',
          kSize: kSize,
          press: () {Get.to(BodyPrice(priceALL: 'ТЕЛЕВИЗОРОВ',));},
        ),
        PlantCard(
          image: 'assets/photocamera.png',
          title: 'ФОТОКАМЕР',
          kSize: kSize,
          press: () {Get.to(BodyPrice(priceALL: 'ФОТОКАМЕР',));},
        )
      ],
    );
  }
}



class PlantCard extends StatelessWidget {
  const PlantCard({
    Key key,
    this.image,
    this.title,
    this.kSize,
    this.press,
  }) : super(key: key);

  final String image, title;
  final double kSize;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child:
        Card(
          color: kPrimaryColor,
          shadowColor: kShadowColor,
          elevation: 50,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: kDefaultPadding)),
              Expanded(
                  flex: 9,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Image.asset(image),
                  )
              ),
              Padding(padding: EdgeInsets.only(top: kDefaultPadding / 2)),
              Expanded(
                flex: 2,
                child: Text(title,
                  style: TextStyle(
                      color: kRextColor,
                      fontSize: kSize * 3.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: kDefaultPadding)),
            ],
          ),
        )
    );
  }
}







