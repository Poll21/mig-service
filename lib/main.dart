import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/pages/home_screen.dart';
import 'package:get/get.dart';

import 'components/expand_menu.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MIG-SERVICE',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroudColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        // visualDensity: VerticalDivider.adaptivePlatformDensity,
      ),
      home: HomeScreen(),

    );
  }
}

