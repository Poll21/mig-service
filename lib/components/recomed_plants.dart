import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/prices/body1.dart';
import 'package:migservice/components/prices/details_price.dart';

class RecomendsPlants extends StatelessWidget{
  const RecomendsPlants({
    Key key,
    this.kSize,
  }) : super(key: key);

  final int kSize;

  @override
  Widget build(BuildContext context){
    return
      Wrap(

      children: <Widget>[
        PlantCard(
          image: 'assets/smartphone.png',
          title: 'СМАРТФОНОВ',
          ksize: kSize,
          press: () {},
        ),
        PlantCard(
      image: 'assets/smartphone.png',
      title: 'СМАРТФОНОВ',
      ksize: kSize,
      press: () {},
    ),
        PlantCard(
          image: 'assets/smartphone.png',
          title: 'СМАРТФОНОВ',
          ksize: kSize,
          press: () {},
        ),
        PlantCard(
          image: 'assets/smartphone.png',
          title: 'СМАРТФОНОВ',
          ksize: kSize,
          press: () {},
        ),
        PlantCard(
          image: 'assets/smartphone.png',
          title: 'СМАРТФОНОВ',
          ksize: kSize,
          press: () {},
        ),
        PlantCard(
          image: 'assets/smartphone.png',
          title: 'СМАРТФОНОВ',
          ksize: kSize,
          press: () {},
        ),
      ]
      );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key key,
    this.image,
    this.title,
    this.ksize,
    this.press,


  }) : super(key: key);

  final String image, title;
  final int ksize;
  final Function press;


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 20.0 * ksize,
      height: 30 * ksize + kDefaultPadding * 0.5,

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
          Padding(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child:Image.asset(image,
              height: 25.5 * ksize - kDefaultPadding),
            ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.only(

                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
                bottom: kDefaultPadding / 2,
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: title.toUpperCase(),
                          style: TextStyle(
                                  fontSize: 2 * ksize * 1.2,
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
