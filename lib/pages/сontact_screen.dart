import 'package:flutter/material.dart';
import 'package:migservice/helpe/costum_appbar.dart';
import 'package:migservice/pages/home_screen.dart';
import '../components/constants.dart';
import '../components/title_page.dart';


class ContactInf extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroudColor,
      body:Column(
          children: [
            CustomAppBar(
                icon: Icons.chevron_left,
                pressIcon: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))
            ),
            TitlePag(title: 'Свяжитесь с нами:'),
           
          ]
      ),

    );
  }
}