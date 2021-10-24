import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        Container(
          height: kDefaultRadius *2,
          padding: EdgeInsets.only(top: kDefaultPadding * 2),
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.30),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultRadius * 2),
                  topRight: Radius.circular(kDefaultRadius * 2))),
        ),
        Expanded(
          child:Row(
            children: [
              Expanded(
              flex: 1,
                  child:
                  Container(
                    color: kPrimaryColor.withOpacity(0.30),
                    child:
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        OperatingMode(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(kDefaultPadding),
                              height: kDesktopSize * 10,
                              width: kDesktopSize * 10,
                              decoration: BoxDecoration(
                                  color: Colors.green[500],
                                  borderRadius:
                                  BorderRadius.circular(kDefaultRadius / 2 )),
                              child: IconButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ContactInf())),
                                icon: Icon(
                                  Icons.phone,
                                  size: kDesktopSize * 5,
                                  color: kTextColor,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text('+7 (3852) 60-74-43;',style: TextStyle(color: kTextColor, fontSize:kDesktopSize * 2.5),),
                                Text('+7-913-210-74-43',style: TextStyle(color: kTextColor, fontSize:kDesktopSize * 2.5),),
                              ],
                            ),

                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(kDefaultPadding),
                              height: kDesktopSize * 10,
                              width: kDesktopSize * 10,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                BorderRadius.circular(kDefaultRadius / 2)),
                              child: IconButton(
                                onPressed: () {},
                                //=> setState((){_launched = _launchInWebViewOrVC('https://vk.com/mig_service22');}),
                                icon: Icon(
                                  Costomicons.vk,
                                  size: kDesktopSize * 5,
                                  color: kTextColor,
                                ),
                              ),
                            ),
                            Container(),
                            Text('https://vk.com/mig_service22', style: TextStyle(color: kTextColor, fontSize:kDesktopSize * 2.5),)
                          ],
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(kDefaultPadding),
                            height: kDesktopSize * 10,
                            width: kDesktopSize * 10,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                BorderRadius.circular(kDefaultRadius / 2)),
                            child: IconButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactInf())),
                              icon: Icon(
                                  Costomicons.whatsapp,
                                  size: kDesktopSize * 5,
                                  color: kTextColor),
                            ),
                          ),
                          Text('+7-913-210-74-43',style: TextStyle(color: kTextColor, fontSize:kDesktopSize * 2.5),),
                        ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(kDefaultPadding),
                                height: kDesktopSize * 10,
                                width: kDesktopSize * 10,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                    BorderRadius.circular(kDefaultRadius / 2)),
                                child: IconButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ContactInf())),
                                  icon: Icon(
                                    Costomicons.instagram,
                                      size: kDesktopSize * 5,
                                      color: kTextColor
                                  ),
                                ),
                              ),
                              Text('https://vk.com/mig_service22',
                                style: TextStyle(
                                    color: kTextColor,
                                    fontSize:kDesktopSize * 2.5),)
                        ]),
                      ]
                    ),
                  ),
              ),
            Expanded(
              flex: 3,
              child:
              Container(
                color: kPrimaryColor.withOpacity(0.30),
                child: Column(
                  children: [
                    Text('г. Барнаул,', style: TextStyle(color: kTextColor, fontSize: kTabletSize * 5 ),),
                    Text('прос-кт Красоармейский 4.', style: TextStyle(color: kTextColor, fontSize: kTabletSize * 5 ),),
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                       Image.asset('assets/1.jpg', height: kDesktopSize * 30, ),
                       Image.asset('assets/Coms4.jpg', height: kDesktopSize * 30,),
                       Image.asset('assets/2.jpg', height: kDesktopSize * 30,),
                          ]
                    ),
                    Image.asset('assets/Map.png'),//Будет карта

                  ],
                ),

              )

          ),
            ],
      ), ),

      ]),
    );
  }
}

class OperatingMode extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Center(
          child: Column(
              children:[
                Text('Режим работы:',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: kTabletSize * 5),),
                Text('Пн. 10:00-19:00',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: kTabletSize * 4),),
                Text('Вт. 10:00-19:00',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: kTabletSize * 4),),
                Text('Ср. 10:00-19:00',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: kTabletSize * 4),),
                Text('Чт. 10:00-19:00',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: kTabletSize * 4),),
                Text('Пт. 10:00-19:00',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: kTabletSize * 4),),
                Text('Сб. 10:00-19:00*',
                  style: TextStyle(
                      color: kRextColor,
                      fontSize: kTabletSize * 4),),
                Text('Вб. 10:00-19:00*',style: TextStyle(
                    color: kRextColor,
                    fontSize: kTabletSize * 4),),
                Container(
                  margin: EdgeInsets.all(kDefaultPadding),
                  child:
                  Text('  *В субботу и воскресенье сервисный центр работает в режиме приема и выдачи.',
                    style: TextStyle(
                        color: kRextColor,
                        fontSize: kTabletSize * 3),),
                ),
              ]
          )
      ),
    );
  }
}

