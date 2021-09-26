import 'package:flutter/material.dart';
import '../constants.dart';
import 'body_prise.dart';


class DetailPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:
      BodyPrice(),


    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(right: kDefaultPadding * 2.8),
            child:
            Center(
              child:
              Text('сервисный центр',
              ),
            )
        )
    );
  }
}

