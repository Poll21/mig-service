import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

 AppBar buildAppBar() {
   return AppBar(
     backgroundColor: kPrimaryColor,
     elevation: 0,

     title: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         IconButton(
           icon: Icon(Icons.list_outlined),
           iconSize: kDefaultPadding * 2,
           onPressed: () {},
         ),
         Text('сервисный центр',
         ),
         SizedBox(
          width: kDefaultPadding * 2.4,
          height: kDefaultPadding * 2,
         )
       ],
     )


   );
 }
}


