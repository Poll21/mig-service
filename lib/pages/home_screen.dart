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
                iconSize: kMobilSize * 5.0,
                onPressed: () {},
              ),
              Text('СЕРВИСНЫЙ ЦЕНТР',
                style: TextStyle(
                    fontSize: kMobilSize * 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
              width: kMobilSize * 5.0,
              
         )
       ],
     ),
        tablet: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonMenu(title: 'Главня', kSize: kTabletSize, press: () {}),
            ButtonMenu(title: 'Ремонт', kSize: kTabletSize, press: () {}),
            ButtonMenu(title: 'Услуги', kSize: kTabletSize, press: () {}),
            Text('СЕРВИСНЫЙ ЦЕНТР', style: TextStyle(fontSize: kTabletSize * 2.5, fontWeight: FontWeight.bold),),
            ButtonMenu(title: 'Контакты', kSize: kTabletSize, press: () {}),
            ButtonMenu(title: 'О Нас', kSize: kTabletSize, press: () {}),
            ButtonMenu(title: 'Главня', kSize: kTabletSize, press: () {}),
          ],
         ),
        desktop: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             ButtonMenu(title: 'Главня', kSize: kDesktopSize, press: () {}),
             ButtonMenu(title: 'Ремонт', kSize: kDesktopSize, press: () {}),
             ButtonMenu(title: 'Услуги', kSize: kDesktopSize, press: () {}),
              Text('СЕРВИСНЫЙ ЦЕНТР', style: TextStyle(fontSize: kDesktopSize * 2.5, fontWeight: FontWeight.bold),),
             ButtonMenu(title: 'Контакты', kSize: kDesktopSize, press: () {}),
             ButtonMenu(title: 'О Нас', kSize: kDesktopSize, press: () {}),
             ButtonMenu(title: 'Главня', kSize: kDesktopSize, press: () {}),
           ],
         )
     ),
   );
 }
}

class  ButtonMenu extends StatelessWidget {
  const ButtonMenu({
    Key key,
    @required
    this.title,
    this.kSize,
    this. press,
  }) : super(key: key);
  final String title;
  final int kSize;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kSize * 12.5,
        margin: EdgeInsets.only(bottom: kDefaultPadding / 2),
        padding: EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 5,
                color: kShadowColor.withOpacity(0.10),
              ),
            ]),
        child: TextButton(
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: kTextColor,
                fontSize: kSize * 1.5,
              ),
            )));
  }
}



