import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:migservice/components/button_memu.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/header_with_seachbox.dart';

import 'package:migservice/components/size_progect.dart';
import '../pages/home_screen.dart';
import '../pages/сontact_screen.dart';

class MobileAppBarr extends StatelessWidget {
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu_outlined),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Column(
        children: [
          Text(
            'СЕРВИСНЫЙ ЦЕНТР',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            'MIG-SERVICE',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Image.asset('assets/logo_r.png')),
      ],
      centerTitle: true,
      toolbarHeight: 80,
      elevation: 30,
      backgroundColor: kPrimaryColor,
      shadowColor: kShadowColor,
      shape: ShapeBorder.lerp(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultRadius),
            bottomRight: Radius.circular(kDefaultRadius),
          )),
          null,
          0),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final icon;
  final Function pressIcon;

  CustomAppBar({Key key, this.icon, this.pressIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Responsive(
          mobile: Container(
            height: kDefaultPadding * kMobilSize * 1.2,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultRadius),
                  bottomRight: Radius.circular(kDefaultRadius),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: kShadowColor.withOpacity(0.50),
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    color: kTextColor,
                    icon: Icon(icon, color: kTextColor),
                    iconSize: kMobilSize * 5.0,
                    onPressed: pressIcon
                    ),
                HeaderWithSearchBox(kSize: kMobilSize),
                IconButton(
                    color: kTextColor,
                    icon: Icon(Icons.zoom_in, color: kTextColor),
                    iconSize: kMobilSize * 5.0,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
              ],
            ),
          ),
          tablet: ButRoW(kSize: kTabletSize),
          desktop: ButRoW(kSize: kDesktopSize),
        ),
      ],
    ));
  }
}

class ButRoW extends StatelessWidget {
  const ButRoW({
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
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonMenu(
                  title: 'Главня',
                  kSize: kSize,
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()))),
              ButtonMenu(title: 'Ремонт', kSize: kSize, press: () {}),
              ButtonMenu(title: 'Услуги', kSize: kSize, press: () {}),
              Text(
                'СЕРВИСНЫЙ ЦЕНТР',
                style: TextStyle(
                    fontSize: kSize * 2.5, fontWeight: FontWeight.bold),
              ),
              ButtonMenu(
                  title: 'Контакты',
                  kSize: kSize,
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactInf()))),
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