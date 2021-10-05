import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/header_with_seachbox.dart';
import 'package:migservice/components/prices/body1.dart';
import 'package:migservice/components/recomed_plants.dart';
import 'package:migservice/components/size_progect.dart';
import 'package:migservice/components/title_with_more_btn.dart';
import 'package:migservice/pages/costum_appbar.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
              desktop: StartMenu(kSize: kDesktopSize, kCross: 3),

            ),
          )
        ],
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
        PlantCard(
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
              Padding(padding: EdgeInsets.only(top: kDefaultPadding)),
              Expanded(
                flex: 1,
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







