import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/title_page.dart';
import 'package:get/get.dart';
import '../controllers/counterController.dart';
import '../helpe/draw_manu.dart';
import '../helpe/costum_appbar.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: Column(children: [
        CustomAppBar(
          icon: Icons.reorder_outlined,
          pressIcon: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        TitlePag(title: 'СРОЧНЫЙ РЕМОНТ'),
        Body(),
      ]),
      drawer: Container(
        margin: EdgeInsets.only(bottom: height/3),
        padding: EdgeInsets.only(bottom: 60),
        width: width/2,
        decoration: BoxDecoration(
          color: kBackgroudColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(kDefaultRadius),
          ),
        ),
        child: Drawer(
          elevation: 0,
          backgroundColor: kBackgroudColor,
          child: DrawManu(),
        ),
      ),
    );
  }
}

