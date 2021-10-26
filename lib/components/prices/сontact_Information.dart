import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
                        OperatingMode(kSize: kDesktopSize,),
                        IconCont(
                            kSize: kDesktopSize,
                            kColor: Colors.green[500],
                            kIcon: Icons.phone,
                            kText1: '+7 (3852)-210-74-43;',
                            kText2: '+7-913-210-74-43'),
                        IconCont(
                            kSize: kDesktopSize,
                            kColor: Colors.blue,
                            kIcon: Costomicons.vk,
                            kText1: 'https://vk.com/mig_service22',
                            kText2: ''),
                        IconCont(kSize: kDesktopSize,
                            kColor: Colors.green[500],
                            kIcon: Costomicons.whatsapp,
                            kText1: '+7-913-210-74-43',
                            kText2: ''
                        ),
                        ]
                    ),
                  ),
              ),
            Expanded(
              flex: 2,
              child:
              Container(
                color: kPrimaryColor.withOpacity(0.30),
                child: Column(
                  children: [
                    Text('г. Барнаул,', style: TextStyle(color: kTextColor, fontSize: kDesktopSize * 5 ),),
                    Text('пр. Красоармейский 4', style: TextStyle(color: kTextColor, fontSize: kDesktopSize * 4 ),),
                    Expanded(
                      child: ListView(
                        children:[
                        Container(
                          margin: EdgeInsets.all(kDefaultPadding),
                          child: Row(
                          mainAxisAlignment:  MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: kDesktopSize * 30,
                              width: kDesktopSize * 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius  )),
                                  image:  DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/1.jpg')
                                  ),
                                ),),
                            Container(
                              height: kDesktopSize * 30,
                              width: kDesktopSize * 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius  )),
                                image:  DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/Coms4.jpg')
                                ),
                              ),),
                            Container(
                              height: kDesktopSize * 30,
                              width: kDesktopSize * 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius  )),
                                image:  DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/2.jpg')
                                ),
                              ),),
                          ]
                        ),),
                          Container(
                            height: kDesktopSize * 100,
                           padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius  )),
                              image:  DecorationImage(
                                  alignment: AlignmentDirectional.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/Map.jpg')


                              ),
                            ),),
                      ]
                    ),
                    ),
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
  const OperatingMode ({
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
                   Radius.circular(kDefaultRadius * 2),
                  )),
           child: Column(
               children:[
                 Text('Режим работы:',
                   style: TextStyle(
                       color: kTextColor,
                       fontSize: kSize * 5),),
                 Text('Пн. 10:00-19:00',
                   style: TextStyle(
                       color: kTextColor,
                       fontSize: kSize * 4),),
                 Text('Вт. 10:00-19:00',
                   style: TextStyle(
                       color: kTextColor,
                       fontSize: kSize * 4),),
                 Text('Ср. 10:00-19:00',
                   style: TextStyle(
                       color: kTextColor,
                       fontSize: kSize * 4),),
                 Text('Чт. 10:00-19:00',
                   style: TextStyle(
                       color: kTextColor,
                       fontSize: kSize * 4),),
                 Text('Пт. 10:00-19:00',
                   style: TextStyle(
                       color: kTextColor,
                       fontSize: kSize * 4),),
                 Text('Сб. 10:00-19:00*',
                   style: TextStyle(
                       color: kRextColor,
                       fontSize: kSize * 4),),
                 Text('Вб. 10:00-19:00*',style: TextStyle(
                     color: kRextColor,
                     fontSize: kSize * 4),),
                 Container(
                   margin: EdgeInsets.all(kDefaultPadding),
                   child:
                   Text('  *В субботу и воскресенье сервисный центр работает в режиме приема и выдачи.',
                     style: TextStyle(
                         color: kRextColor,
                         fontSize: kSize * 3),),
                 ),
               ]
           ),
         )

      ),
    );
  }
}

class IconCont extends StatelessWidget {
  const IconCont ({
    Key key,
    this.kSize,
    this.kColor,
    this.kIcon,
    this.kText1,
    this.kText2,
  }) : super(key: key);
  final double kSize;
  final kColor;
  final kIcon;
  final kText1;
  final kText2;

@override
Widget build(BuildContext context) {
return Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
      margin: EdgeInsets.all(kDefaultPadding),
      height: kSize * 8,
      width: kSize * 8,
      decoration: BoxDecoration(
          color: kColor,
          borderRadius:
          BorderRadius.circular(kDefaultRadius / 2 )),
      child: IconButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ContactInf())),
        icon: Icon(
          kIcon,
          size: kSize * 5,
          color: kTextColor,
        ),
      ),
    ),
    Column(
      children: [
        Text(kText1, style: TextStyle(color: kTextColor, fontSize:kDesktopSize * 2.5),),
        Text(kText2, style: TextStyle(color: kTextColor, fontSize:kDesktopSize * 2.5),),
      ],
    ),
  ],
);
}
}



