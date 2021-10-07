import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/pages/costum_appbar.dart';
import 'package:migservice/pages/home_screen.dart';
import '../constants.dart';
import '../title_page.dart';


class BodyPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        body:Column(
          children: [
          CustomAppBar(
            icon: Icons.arrow_back_outlined,
                  pressIcon: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))
          ),

          Column(
            children: [
              TitlePag(title: 'РЕМОНТ СМАРТФОНОВ'),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text( 'Дталь',textAlign: TextAlign.center,),
                Text( 'Описание услуги',textAlign: TextAlign.center,),
                Text( 'Стоимость услуги', textAlign: TextAlign.center,)
              ],),
             Expanded(
               child: Container(
                 height: 300,
                   child:
                   ListView(
                     scrollDirection: Axis.vertical,
                     children: [
                       Row(children: [
                         Image.asset('assets/LCD.jpg', width: 150, ),
                         Text('Замена дисплейного модуля'),
                         Text('800р.')
                       ]),
                       Row(children: [
                         Image.asset('assets/LCD.jpg', width: 150, ),
                         Text('Замена дисплейного модуля'),
                         Text('800р.')
                       ])
                     ],
                   )),
             )


        ]
    ),
      ]
    ),
    );
  }
}