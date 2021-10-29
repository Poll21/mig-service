import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:migservice/components/size_progect.dart';
import 'package:migservice/pages/costum_appbar.dart';
import 'package:migservice/pages/home_screen.dart';
import '../../costomicons_icons.dart';
import '../constants.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import '../title_page.dart';
import 'body_prise.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactInf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        body: Column(children: [
          CustomAppBar(
              icon: Icons.chevron_left,
              pressIcon: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))),
          TitlePag(title: 'Контактная информация:'),
          Responsive(
            mobile: Hand(kSize: 1),
            tablet: Hand(kSize: 2),
            desktop: Hand(kSize: 2),
          ),

          Responsive(
            mobile: ContInformMob(kSize: kMobilSize),
            tablet: ContInform(kSize: kTabletSize),
            desktop: ContInform(kSize: kDesktopSize),
          ),
        ]));
  }
}

class OperatingMode extends StatelessWidget {
  const OperatingMode({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding * 2),
            decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.40),
              borderRadius: BorderRadius.all(
              Radius.circular(kDefaultRadius),
              )
            ),
            child:
            Column(children: [
              Text(
            'Режим работы:',
            style: TextStyle(color: kTextColor, fontSize: kSize * 4),
              ),
              Text(
            'Пн. 10:00-19:00',
            style: TextStyle(color: kTextColor, fontSize: kSize * 3),
              ),
              Text(
            'Вт. 10:00-19:00',
            style: TextStyle(color: kTextColor, fontSize: kSize * 3),
              ),
              Text(
            'Ср. 10:00-19:00',
            style: TextStyle(color: kTextColor, fontSize: kSize * 3),
              ),
              Text(
            'Чт. 10:00-19:00',
            style: TextStyle(color: kTextColor, fontSize: kSize * 3),
              ),
              Text(
            'Пт. 10:00-19:00',
            style: TextStyle(color: kTextColor, fontSize: kSize * 3),
              ),
              Text(
            'Сб. 10:00-19:00*',
            style: TextStyle(color: kRextColor, fontSize: kSize * 3),
              ),
              Text(
            'Вб. 10:00-19:00*',
            style: TextStyle(color: kRextColor, fontSize: kSize * 3),
              ),
              Container(
                margin: EdgeInsets.all(kDefaultPadding),
                child:
                Text('  *В субботу и воскресенье сервисный центр работает в режиме приема и выдачи.',
                  style: TextStyle(color: kRextColor, fontSize: kSize * 2),
                ),
            ),
          ]),
      )),
    );
  }
}

class IconCont extends StatelessWidget {

  const IconCont({
    Key key,
    this.kSize,
    this.kColor,
    this.kIcon,
    this.press,
  }) : super(key: key);
  final double kSize;
  final kColor;
  final kIcon;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(kDefaultPadding),
      height: kSize * 8,
      width: kSize * 8,
      decoration: BoxDecoration(
          color: kColor,
          borderRadius: BorderRadius.circular(kDefaultRadius / 2)),
      child: IconButton(
        onPressed: press,
        icon: Icon(
          kIcon,
          size: kSize * 5,
          color: kTextColor,
        ),
      ),
    );
  }
}

class ContInform extends StatelessWidget {
  const ContInform({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: kPrimaryColor.withOpacity(0.30),
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                    OperatingMode(kSize: kSize,),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        IconCont(
                          kSize: kSize,
                          kColor: Colors.green[500],
                          kIcon: Icons.phone,
                          press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
                        ),
                      Column(children: [
                        Text('+7(3852)-210-74-43',
                          style: TextStyle(color: kTextColor, fontSize: kDesktopSize * 2.5),
                        ),
                        Text(
                        '+7-913-210-74-43',
                        style: TextStyle(
                            color: kTextColor, fontSize: kDesktopSize * 2.5),
                        ),
                      ]
                      ),
                    ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        IconCont(
                          kSize: kSize,
                          kColor: Colors.blue,
                          kIcon: Costomicons.vk,
                          press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
                        ),
                        Text(
                        'vk.com/mig_service22',
                          style: TextStyle(color: kTextColor, fontSize: kDesktopSize * 2.5),
                        ),
                    ]),
                    SizedBox(height: kDefaultPadding),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        IconCont(
                          kSize: kSize,
                          kColor: Colors.green[500],
                          kIcon: Costomicons.whatsapp,
                          press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
                        ),
                          Text(
                            '+7-913-210-74-43',
                            style: TextStyle(color: kTextColor, fontSize: kDesktopSize * 2.5),
                          ),
                        ]),
                  ]
                  ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: kPrimaryColor.withOpacity(0.30),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'г. Барнаул,',
                          style: TextStyle(color: kTextColor, fontSize: kSize * 5),
                        ),
                        Text(
                          'пр. Красоармейский 4',
                          style: TextStyle(color: kTextColor, fontSize: kSize * 4),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(children: [
                        Container(
                          margin: EdgeInsets.all(kDefaultPadding),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: kSize * 30,
                                  width: kSize * 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(kDefaultRadius)),
                                    image: DecorationImage(
                                        alignment: AlignmentDirectional.center,
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/1.jpg')),
                                  ),
                                ),
                                Container(
                                  height: kSize * 30,
                                  width: kSize * 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(kDefaultRadius)),
                                    image: DecorationImage(
                                        alignment: AlignmentDirectional.center,
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/Coms4.jpg')),
                                  ),
                                ),
                                Container(
                                  height: kSize * 30,
                                  width: kSize * 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(kDefaultRadius)),
                                    image: DecorationImage(
                                        alignment: AlignmentDirectional.center,
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/2.jpg')),
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(kDefaultPadding * 2),
                          height: kSize * 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(kDefaultRadius)),
                            image: DecorationImage(
                                alignment: AlignmentDirectional.center,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/Map.jpg')),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ContInformMob extends StatelessWidget {
  const ContInformMob({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: kPrimaryColor.withOpacity(0.30),
        child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'г. Барнаул,',
                    style: TextStyle(color: kTextColor, fontSize: kSize * 5),
                  ),
                  Text(
                    'пр. Красоармейский 4',
                    style: TextStyle(color: kTextColor, fontSize: kSize * 4),
                  ),
                ],
              ),
              OperatingMode(
            kSize: kSize,
          ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconCont(
                kSize: kSize,
                kColor: Colors.green[500],
                kIcon: Icons.phone,
                press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
              ),
              IconCont(
                kSize: kSize,
                kColor: Colors.blue,
                kIcon: Costomicons.vk,
                press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),),
              IconCont(
                kSize: kSize,
                kColor: Colors.green[500],
                kIcon: Costomicons.whatsapp,
                press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),),
            ],
          ),
              Container(
                height: kSize * 100,
                margin: EdgeInsets.all(kDefaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
                  image: DecorationImage(
                      alignment: AlignmentDirectional.center,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/Map.jpg')),
                ),
              ),
              Container(
                margin: EdgeInsets.all(kDefaultPadding),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: kSize * 20,
                    width: kSize * 15,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius / 2)),
                      image: DecorationImage(
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/1.jpg')),
                    ),
                  ),
                  Container(
                    height: kSize * 20,
                    width: kSize * 15,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius / 2)),
                      image: DecorationImage(
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Coms4.jpg')),
                    ),
                  ),
                  Container(
                    height: kSize * 20,
                    width: kSize * 15,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius / 2)),
                      image: DecorationImage(
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/2.jpg')),
                    ),
                  ),
                ]),
          ),

        ]),
      ),
    );
  }
}

class Hand extends StatelessWidget {
  const Hand({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

Widget build(BuildContext context) {
return Container(
  height: kDefaultRadius * kSize,
  padding: EdgeInsets.only(top: kDefaultPadding * kSize),
  decoration: BoxDecoration(
      color: kPrimaryColor.withOpacity(0.30),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kDefaultRadius * kSize),
          topRight: Radius.circular(kDefaultRadius * kSize))),
);
}
}


