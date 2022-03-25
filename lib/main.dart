import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants/constants.dart';
import 'package:migservice/pages/about_us_sсreen.dart';
import 'package:migservice/pages/home_screen.dart';
import 'package:get/get.dart';
import 'package:migservice/pages/prise_sсreen.dart';
import 'package:migservice/pages/service_screen.dart';
import 'pages/my_service_screen.dart';
import 'pages/сontact_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:() => HomeScreen()),
        GetPage(name: '/Price', page:() => BodyPrice()),
        GetPage(name: '/Service', page:() => ServiceScreen()),
        GetPage(name: '/Contact', page:() => ContactInf()),
        GetPage(name: '/AboutUs', page:() => AboutUsScreen()),
        GetPage(name: '/MyService', page:() => MyServiceScreen()),
      ],
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

