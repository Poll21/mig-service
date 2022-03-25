import 'package:flutter/material.dart';
import 'package:migservice/components/widget/body_home_screen.dart';
import 'package:migservice/components/constants/constants.dart';
import 'package:migservice/components/widget/title_page.dart';
import 'package:get/get.dart';
import '../components/helpe/costum_appbar.dart';
import '../components/helpe/draw_manu.dart';
import '../controllers/counterController.dart';


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
        BodyHomeScreen(),
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
          child:DrawManu(),
        ),
      ),
    );
  }
}

