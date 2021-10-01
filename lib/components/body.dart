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
            mobile: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', kSize: kMobilSize ,press: () {},),
            tablet: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', kSize: kTabletSize ,press: () {},),
            desktop: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ', kSize: kTabletSize ,press: () {},)
          ),
          Padding(padding: EdgeInsets.only(top: kDefaultPadding)),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            color: Colors.white,
            child: Responsive(
             mobile: RecomendsPlants(kSize: kMobilSize),
             tablet: RecomendsPlants(kSize: kTabletSize),
             desktop: RecomendsPlants(kSize: kTabletSize),
            ),
            ),
        ],
      ),
    );
  }
}







