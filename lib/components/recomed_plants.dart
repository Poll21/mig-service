import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/prices/body1.dart';
import 'package:migservice/components/prices/details_price.dart';

class RecomendsPlants extends StatelessWidget{
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Wrap(
      children: [
        PlantCard(
            image:'assets/smartphone.png',
            title: 'СМАРТФОНЫ',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPrice()
                  ));
            },
          ),
        PlantCard(
              image:'assets/tablet.png',
              title: 'ПЛАНШЕТЫ',
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BodiPrise1()
                    ));
              },
            ),
        PlantCard(
            image:'assets/computer.png',
            title: 'КОМПЬЮТЕРЫ',
            press: () {},
          ),
        PlantCard(
            image:'assets/TV.png',
            title: 'ТЕЛЕВИЗОРЫ',
            press: () {},
          ),
        PlantCard(
            image:'assets/noteboock.png',
            title: 'НОУТБУКИ',
            press: () {},
          ),
        PlantCard(
          image:'assets/photocamera.png',
          title: 'ФОТОКАМЕРЫ',
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
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: kCardDefaultHeigth / 1.5,
      height: kCardDefaultHeigth + kDefaultPadding * 0.5,

      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kShadowColor.withOpacity(0.5)
            )]
      ),
      margin: EdgeInsets.only(
          left: kDefaultPadding * 2,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5
      ),

      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child:Image.asset(image,
              height: kCardDefaultHeigth - kDefaultPadding * 3,),
            ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.only(
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
                bottom: kDefaultPadding / 3,
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: title.toUpperCase(),
                          style: TextStyle(
                                  fontSize: kDefaultPadding * 1.2,
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
