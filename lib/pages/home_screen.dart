import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/title_page.dart';

import 'costum_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kBackgroudColor,
      body: Column(children: [
         CustomAppBar(
           icon: Icons.reorder_outlined,
            pressIcon:() { Scaffold.of(context).openDrawer(); },),
        TitlePag(title: 'СРОЧНЫЙ РЕМОНТ'),
        Body(),
      ]),
      drawer: Container(
        margin: EdgeInsets.only(bottom: 100),
        padding: EdgeInsets.only(bottom: 60),
        decoration: BoxDecoration(
            color: kBackgroudColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(kDefaultRadius * 2),
            ),
        ),

        child: Drawer(
          elevation: 0,
          backgroundColor: kBackgroudColor,
         
        ),
      ),
    );
  }
}


