import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
import 'costum_appbar.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: kBackgroudColor,
        body:Column(
          children: [
            CustomAppBar(),
            Body(),
          ],
        )

      //
    );
  }


}





