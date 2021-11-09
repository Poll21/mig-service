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
            pressIcon: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MobailMenu())),
          ),
          TitlePag(title: 'СРОЧНЫЙ РЕМОНТ'),
          Body(),
        ]));
  }
}
