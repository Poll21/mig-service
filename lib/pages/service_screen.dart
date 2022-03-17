import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/costum_appbar.dart';

class ServiceScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  ServiceScreen({Key key}) : super(key: key);


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