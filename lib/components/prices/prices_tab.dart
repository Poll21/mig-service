import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/counterController.dart';
import '../constants.dart';

class PricesTab extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  PricesTab({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_outlined),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations
                  .of(context)
                  .openAppDrawerTooltip,
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
        actions: [Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Image.asset('assets/logo_r.png')),
        ],
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 30,
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
      drawer: Drawer(),
      body: Column(
      children: [
      ],
    ),);
  }
}
