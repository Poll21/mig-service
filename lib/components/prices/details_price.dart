import 'package:flutter/material.dart';
import 'package:migservice/pages/costum_appbar.dart';
import '../constants.dart';
import '../size_progect.dart';
import '../title_with_more_btn.dart';
import 'body1.dart';


class DetailPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        body: Column(
          children: [
            CustomAppBar(),
            Responsive(
                mobile: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ СМАРТФОНОВ',
                  kSize: kMobilSize ,press: () {},),
                tablet: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ СМАРТФОНОВ',
                  kSize: kTabletSize ,press: () {},),
                desktop: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ СМАРТФОНОВ',
                  kSize: kTabletSize ,press: () {},)
            ),
            Expanded(
              
                child: Responsive(
                    mobile: StartMenu(kSize: kMobilSize, kCross: 2,),
                    tablet: StartMenu(kSize: kTabletSize, kCross: 3),
                    desktop: StartMenu(kSize: kDesktopSize, kCross: 4),

            ),
            )
          ],
        ),
      //BodyPrice(),
    );
  }
}

class StartMenu extends StatelessWidget {
  const StartMenu ({
    Key key,
    this.kSize,
    this.kCross
  }) : super(key: key);
    final int kSize, kCross;

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(kDefaultPadding * 2),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: kCross,
        mainAxisSpacing: kDefaultPadding * 2,
        crossAxisSpacing: kDefaultPadding * 3,
        childAspectRatio: 0.9
      ),
    children: [
      PlantCard1(
        image: 'assets/smartphone.png',
        title: 'СМАРТФОНОВ',
        kSize: kSize,
        press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BodiPrise1())),
      ),
      PlantCard(
        image: 'assets/tablet.png',
        title: 'ПЛАНШЕТОВ',
        kSize: kSize,
        press: () {},
      ),
      PlantCard(
        image: 'assets/noteboock.png',
        title: 'НОУТБУКОВ',
        kSize: kSize,
        press: () {},
      ),
      PlantCard(
        image: 'assets/computer.png',
        title: 'КОМПЬЮТЕРОВ',
        kSize: kSize,
        press: () {},
      ),
      PlantCard(
        image: 'assets/TV.png',
        title: 'ТЕЛЕВИЗОРОВ',
        kSize: kSize,
        press: () {},
      ),
      PlantCard(
        image: 'assets/photocamera.png',
        title: 'ФОТОКАМЕР',
        kSize: kSize,
        press: () {},
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
  final int kSize;
  final Function press;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(kDefaultRadius / 2)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kShadowColor.withOpacity(0.5)
            )]
      ),
      child: Column(
        children: [
        Image.asset(image,
                height: 35 * kSize - kDefaultPadding * 2),

          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: title.toUpperCase(),
                            style: TextStyle(
                                fontSize: 2 * kSize * 1.2,
                                color: kRextColor,
                                fontWeight: FontWeight.bold)

                        )
                      ]
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PlantCard1 extends StatelessWidget {
  const PlantCard1({
    Key key,
    this.image,
    this.title,
    this.kSize,
    this.press,
  }) : super(key: key);

  final String image, title;
  final int kSize;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child:
        SizedBox(
          height: kCardDefaultHeigth * kSize *2,
          width: kCardDefaultHeigth * kSize,
          child:
            Card(
              color: kPrimaryColor,
              shadowColor: kShadowColor,
              elevation: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius))
              ),
              child: Column(
                children: [
                  Image.asset(image),
                  Text(title)
                ],

              ),


            )
        )
        );
  }
}