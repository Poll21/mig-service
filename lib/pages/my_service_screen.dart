import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/helpe/costum_appbar.dart';
import '../controllers/counterController.dart';

class MyServiceScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  MyServiceScreen({Key key}) : super(key: key);


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
