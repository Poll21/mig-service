import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counterController.dart';
import '../helpe/costum_appbar.dart';

class AboutUsScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  AboutUsScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          CustomAppBarOthe(),
        ],
      ),);
  }
}