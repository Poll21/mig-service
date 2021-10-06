import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/size_progect.dart';

import 'home_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar ({
    Key key,
    this.icon,
    this.pressIcon,

  }) : super(key: key);
  final icon;
  final pressIcon;
  @override
  Widget build(BuildContext context) {


    return Container(
        child: Column(
          children: [
            Responsive(
              mobile: Container(
                height: kDefaultPadding * kMobilSize * 1.6,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kDefaultRadius ),
                      bottomRight: Radius.circular(kDefaultRadius ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: kShadowColor.withOpacity(0.50),
                      ),
                    ]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          color: kTextColor,
                          icon: Icon(icon),
                          iconSize: kMobilSize * 5.0,
                          onPressed:  pressIcon,
                        ),
                        Text('СЕРВИСНЫЙ ЦЕНТР',
                          style: TextStyle(
                              fontSize: kMobilSize * 2.5,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: kMobilSize * 5.0,

                        )
                      ],
                    ),
                    HeaderWithSearchBox(kSize: kMobilSize),
                  ],
                ),
              ),
              tablet: Container(
                height: kDefaultPadding * kTabletSize * 1.6,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kDefaultRadius * 2),
                      bottomRight: Radius.circular(kDefaultRadius * 2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: kShadowColor.withOpacity(0.50),
                      ),
                    ]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonMenu(title: 'Главня', kSize: kTabletSize, press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))),
                        ButtonMenu(title: 'Ремонт', kSize: kTabletSize, press: () {}),
                        ButtonMenu(title: 'Услуги', kSize: kTabletSize, press: () {}),
                        Text('СЕРВИСНЫЙ ЦЕНТР', style: TextStyle(fontSize: kTabletSize * 2.5, fontWeight: FontWeight.bold),),
                        ButtonMenu(title: 'Контакты', kSize: kTabletSize, press: () {}),
                        ButtonMenu(title: 'О Нас', kSize: kTabletSize, press: () {}),
                        ButtonMenu(title: 'Главня', kSize: kTabletSize, press: () {}),
                      ],
                    ),
                    HeaderWithSearchBox(kSize: kTabletSize),
                  ],
                ),
              ),
              desktop: Container(
                height: kDefaultPadding * kDesktopSize * 1.6,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kDefaultRadius * 2),
                      bottomRight: Radius.circular(kDefaultRadius * 2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: kShadowColor.withOpacity(0.50),
                      ),
                    ]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonMenu(title: 'Главня', kSize: kDesktopSize, press: ()  => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))),
                        ButtonMenu(title: 'Ремонт', kSize: kDesktopSize, press: () {}),
                        ButtonMenu(title: 'Услуги', kSize: kDesktopSize, press: () {}),
                        Text('СЕРВИСНЫЙ ЦЕНТР', style: TextStyle(fontSize: kDesktopSize * 2.5, fontWeight: FontWeight.bold),),
                        ButtonMenu(title: 'Контакты', kSize: kDesktopSize, press: () {}),
                        ButtonMenu(title: 'О Нас', kSize: kDesktopSize, press: () {}),
                        ButtonMenu(title: 'Главня', kSize: kDesktopSize, press: () {}),
                      ],
                    ),
                    HeaderWithSearchBox(kSize: kDesktopSize),
                  ],
                ),
              ),

            ),
          ],
        )

    );
  }
}
class  ButtonMenu extends StatelessWidget {
  const ButtonMenu({
    Key key,
    @required
    this.title,
    this.kSize,
    this. press,
  }) : super(key: key);
  final String title;
  final int kSize;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kSize * 14.0,
        margin: EdgeInsets.only(left:
        kDefaultPadding / 4,
            right: kDefaultPadding / 4,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),

        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 5,
                color: kShadowColor.withOpacity(0.10),
              ),
            ]),
        child: TextButton(
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: kTextColor,
                fontSize: kSize * 2.0,
              ),
            )));
  }
}
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.kSize,
  }) : super(key: key);

  final int kSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kDefaultPadding),
      height: kDefaultPadding * kSize,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 15 + kDefaultPadding,
            ),
            height: kDefaultPadding * kSize - 10,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding * kSize / 8,
                    right: kDefaultPadding * kSize/ 8,
                  ),
                  child:
                  Image.asset('assets/smartphone.png', height: kDefaultPadding * 2 * kSize),
                ),
                Center(
                    child:
                    Container(
                      child:
                      Text('MIG-SERVICE',
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: kDefaultPadding / 2.3 * kSize)
                      ),)
                ),
                Image.asset('assets/computer.png', height: kDefaultPadding * 2 * kSize),
              ],
            ),
          ),
        ],
      ),
    );

  }
}