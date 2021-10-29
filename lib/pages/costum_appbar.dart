import 'package:flutter/material.dart';
import 'package:migservice/components/button_memu.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/header_with_seachbox.dart';
import 'package:migservice/components/prices/%D1%81ontact_Information.dart';
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
                          icon: Icon(icon, color: kTextColor),
                          iconSize: kMobilSize * 5.0,
                          onPressed: pressIcon,

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
              tablet: ButRoW(kSize: kTabletSize),
              desktop: ButRoW(kSize: kDesktopSize),
            ),
          ],
        )
    );
  }
}

class ButRoW extends StatelessWidget {
  const ButRoW ({
    Key key,
    this.kSize,
  }) : super(key: key);
  final kSize;

  @override
  Widget build(BuildContext context) {


    return Container(
      height: kDefaultPadding * kSize * 1.6,
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
              ButtonMenu(title: 'Главня', kSize: kSize,
                  press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))),
              ButtonMenu(title: 'Ремонт', kSize: kSize,
                  press: () {}),
              ButtonMenu(title: 'Услуги', kSize: kSize, press: () {}),
              Text('СЕРВИСНЫЙ ЦЕНТР', style: TextStyle(fontSize: kSize * 2.5, fontWeight: FontWeight.bold),),
              ButtonMenu(title: 'Контакты', kSize: kSize, press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf()))),
              ButtonMenu(title: 'О Нас', kSize: kSize, press: () {}),
              ButtonMenu(title: 'Главня', kSize: kSize, press: () {}),
            ],
          ),
          HeaderWithSearchBox(kSize: kSize),
        ],
      ),
    );
  }
}

class MobailMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    drawer: Drawer(
child: new ListView(
children: <Widget>[
new DrawerHeader(
child: new Text("Drawer Header"),
decoration: new BoxDecoration(
color: Colors.blue,
),
),
new Text("Item 1"),
new Text("Item 2"),
new Text("Item 3"),
new Text("Item 4"),
new Text("Item 5"),
new Text("Item 6"),
],
),
),
    );
  }
}



