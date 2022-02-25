import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/title_page.dart';

import 'costum_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.forward_10_outlined),
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
        centerTitle: true,
        toolbarHeight: 70,
        elevation: 20,
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
      ),
      backgroundColor: kBackgroudColor,
      body: Column(children: [
        // CustomAppBar(
        //   icon: Icons.reorder_outlined,),
        TitlePag(title: 'СРОЧНЫЙ РЕМОНТ'),
        Body(),
      ]),
      drawer: Drawer(),
    );
  }
}
