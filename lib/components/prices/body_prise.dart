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
              SizedBox(
                width: double.infinity,
                child:
                DataTable(
                    columns: [
                      DataColumn(label: Text( 'Дталь')),
                      DataColumn(label: Text( 'Описание услуги')),
                      DataColumn(label: Text( 'Стоимость услуги')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(
                          Row(
                            children: [
                              Image.asset('assets/LCD.jpg')
                              
                            ],
                          )
                        )
                      ])
                    ]),
              ),
        ]
    ),
      ]
    ),
    );
  }
}