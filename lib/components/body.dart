import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/header_with_seachbox.dart';
import 'package:migservice/components/recomed_plants.dart';
import 'package:migservice/components/title_with_more_btn.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Size _sizeH; размеры виджита
    //Size _sizeW;



    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', press: () {},),
          RecomendsPlants(),
        ],
      ),
    );
  }
}







