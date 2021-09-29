import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/size_progect.dart';

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

     title:
     Responsive(
        mobile: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.list_outlined),
                iconSize: kDefaultPadding * 2,
                onPressed: () {},
              ),
              Text('СЕРВИСНЫЙ ЦЕНТР',
              ),
              SizedBox(
              width: kDefaultPadding * 2.4,
              height: kDefaultPadding * 2,
         )
       ],
     ),
        tablet: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(
               icon: Icon(Icons.list_outlined),
               iconSize: kDefaultPadding * 2,
               onPressed: () {},
             ),
             Text('СЕРВИСНЫЙ ЦЕНТР',
             ),
             SizedBox(
               width: kDefaultPadding * 2.4,
               height: kDefaultPadding * 2,
             )
           ],
         ),
        desktop: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
          Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding/2),
            padding: EdgeInsets.only(
             left: kDefaultPadding, right: kDefaultPadding/2),
            decoration: BoxDecoration(
             border: Border.all(color: Colors.black45, width: 1),
             borderRadius: BorderRadius.all(
                 Radius.circular(5)),
             boxShadow: [
               BoxShadow(
                 offset: Offset(0, 5),
                 blurRadius: 5,
                 color: kShadowColor.withOpacity(0.20),
               ),
             ]
            ),
            child: TextButton(
             onPressed: () {},
             child: Text('Главная',
               style:
               TextStyle(
                 fontWeight: FontWeight.bold,
                 color: kTextColor,
                 fontSize: 20,
               ),
             )
         )
     ),
             Text('СЕРВИСНЫЙ ЦЕНТР',
             ),
             SizedBox(
               width: kDefaultPadding * 2.4,
               height: kDefaultPadding * 2,
             )
           ],
         )
     ),

   );
 }
}


