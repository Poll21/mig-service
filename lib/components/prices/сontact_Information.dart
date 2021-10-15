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
        TitlePag(title: 'Свяжитесь с нами:'),
        Container(
          padding: EdgeInsets.only(top: kDefaultPadding * 2),
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.30),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultRadius * 2),
                  topRight: Radius.circular(kDefaultRadius * 2))),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
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
                              Text('Сб. 10:00-19:00',
                                style: TextStyle(
                                    color: kRextColor,
                                    fontSize: kTabletSize * 4),),
                              Text('Вб. 10:00-19:00',style: TextStyle(
                                  color: kRextColor,
                                  fontSize: kTabletSize * 4),),
                              Container(
                                margin: EdgeInsets.all(kDefaultPadding),
                                child:
                                Text('В субботу и воскресенье сервисный центр работает в режиме приема и выдачи.',
                                  style: TextStyle(
                                    color: kRextColor,
                                    fontSize: kTabletSize * 3),),
                              ),
                              

                            ]
                          )
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                           margin: EdgeInsets.all(kDefaultPadding),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green[500],
                                borderRadius:
                                    BorderRadius.circular(kDefaultRadius / 2)),
                            child: IconButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactInf())),
                              icon: Icon(
                                Icons.phone,
                                size: 30.0,
                                color: kTextColor,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text('+7 (3852) 60-74-43,'),
                              Text('+7-913-210-74-43'),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.circular(kDefaultRadius / 2)),
                            child: IconButton(
                              onPressed: () {},
                              //=> setState((){_launched = _launchInWebViewOrVC('https://vk.com/mig_service22');}),
                              icon: Icon(
                                Costomicons.vk,
                                color: kTextColor,
                              ),
                            ),
                          ),
                          Text('https://vk.com/mig_service22')
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(kDefaultRadius / 2)),
                        child: IconButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactInf())),
                          icon: Icon(Costomicons.whatsapp),
                          color: kTextColor,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(kDefaultRadius / 2)),
                        child: IconButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactInf())),
                          icon: Icon(
                            Costomicons.instagram,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text('г. Барнаул,', style: TextStyle(color: kTextColor, fontSize: kTabletSize * 5 ),),
                      Text('прос-кт Красоармейский 4.', style: TextStyle(color: kTextColor, fontSize: kTabletSize * 5 ),),
                      Row(
                        children: [
                          Image.asset('assets/1.jpg', height: 300,),
                          Image.asset('assets/2.jpg', height: 300,),
                        ],
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
