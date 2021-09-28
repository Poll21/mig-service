import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/header_with_seachbox.dart';
import 'package:migservice/components/recomed_plants.dart';
import 'package:migservice/components/size_progect.dart';
import 'package:migservice/components/title_with_more_btn.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {



    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Responsive(
            mobile: HeaderWithSearchBox(kSize: 6),
            tablet: HeaderWithSearchBox(kSize: 8),
            desktop: HeaderWithSearchBox(kSize: 10)
          ),
          Responsive(
            mobile: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', kSize: 6 ,press: () {},),
            tablet: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', kSize: 8 ,press: () {},),
            desktop: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', kSize: 10 ,press: () {},)
          ),
          Responsive(
              mobile: RecomendsPlants(kSize: 6),
              tablet: RecomendsPlants(kSize: 8),
              desktop: RecomendsPlants(kSize: 10)
          ),



        ],
      ),
    );
  }
}







