import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/title_page.dart';
import 'costum_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroudColor,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, double.minPositive),
           child: CustomAppBar(
              icon: Icons.reorder_outlined,
              pressIcon: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MobailMenu())),
            ),
          ),

        drawer: Drawer(
          child: SizedBox(
            width: 100,
            height: 300,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text("Drawer Header"),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                Text("Item 1"),
                Text("Item 2"),
                Text("Item 3"),
                Text("Item 4"),
                Text("Item 5"),
                Text("Item 6"),
              ],
            ),
          ),
        ),

        body:

         Column(children: [
          TitlePag(title: 'СРОЧНЫЙ РЕМОНТ'),
          Body(),
        ]
        )


    );
  }
}

class MobailMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: 100,
        height: 300,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
            Text("Item 4"),
            Text("Item 5"),
            Text("Item 6"),
          ],
        ),
      ),
    );
  }
}
