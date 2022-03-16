import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/attention_page.dart';
import 'package:migservice/components/prices/body_prise.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/smol_bootom_menu.dart';
import '../components/constants.dart';
import '../pages/about_us.dart';
import '../pages/home_screen.dart';
import '../pages/my_service_screen.dart';
import '../pages/service_screen.dart';
import '../pages/сontact_screen.dart';

class MenuString {
  final String text;
  final Function function;
  MenuString( {
    this.text,
    this. function,
  });
}

class DropdownButtonRepair extends StatefulWidget {
  const DropdownButtonRepair({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DropdownButtonRepair(kTabletSize);
}

class _DropdownButtonRepair extends State<DropdownButtonRepair>{
  final double kSize;

  _DropdownButtonRepair(this.kSize);


  @override
  Widget build(BuildContext context) {
    final List<MenuString> dropItem = [
      //создаем лист тапа данных TwoString
      MenuString(
          text: 'смартфоны',
          function: () {
            Get.to(HomeScreen());
          }),
      MenuString(
          text: 'планшеты',
          function: (){}
      ),
      MenuString(
          text: 'ноутбуки',
          function: () {
            Get.to(ServiceScreen());
          }),
      MenuString(
          text: 'компьютеры',
          function: () {
            Get.to(ContactInf());
          }),
      MenuString(
          text: 'телевизоры',
          function: () {
            Get.to(AboutUsScreen());
          }),
      MenuString(
          text: 'фотокамкры',
          function: () {
            Get.to(MyServiceScreen());
          }),
      MenuString(
          text: 'и другие',
          function: () {
            Get.to(MyServiceScreen());
          }),
    ];
    final List<Widget>
    dropFields = //списку виджетов присваивается значение интерируемого листа
    dropItem
        .map((MenuString towString) => ButtonDropItem(
      text: towString,
      function: towString,
      kSize: kSize,
    ))
        .toList();
    return DropdownButton(
     hint: const Text('Ремонт'),
      items: dropFields,
      onTap: (){},
    );
  }
}

class ButtonDropItem extends StatelessWidget {
  final double kSize;
  final MenuString text;
  final MenuString function;
  const ButtonDropItem({Key key, this.kSize, this.text, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: kSize * 20.0,
            margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2,
                horizontal: kDefaultPadding / 2),
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
                onPressed: function.function,
                child: Text(
                  text.text,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: kTextColor,
                    fontSize: kSize * 2.5,
                  ),
                ))

        ),
      ],
    );
  }
}

class ButtonMenu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final double kSize;

  ButtonMenu({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonMenuItem(
              text: 'Главная',
              function: () {Get.to(HomeScreen());},
              kSize: kSize,),
            DropdownButtonRepair(),
            ButtonMenuItem(
              text: 'Услуги',
              function: () {Get.to(ServiceScreen());},
              kSize: kSize,),
            ButtonMenuItem(
              text: 'Контакты',
              function: () {Get.to(ContactInf());},
              kSize: kSize,),
            ButtonMenuItem(
              text: 'О нас',
              function: () {Get.to(AboutUsScreen());},
              kSize: kSize,),
            ButtonMenuItem(
              text: 'Мои ремонты',
              function: () {Get.to(MyServiceScreen());},
              kSize: kSize,),
          ]
        );
  }
}

//преобразуем текст и виджет ButtonMenuItem
class ButtonMenuItem extends StatelessWidget {
  final double kSize;
  final String text;
  final Function function;
  const ButtonMenuItem({
    Key key,
    this.text,
    this.function,
    this.kSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Container(
              width: kSize * 20.0,
              margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2,
                  horizontal: kDefaultPadding / 2),
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
                  onPressed: function,
                  child: Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: kTextColor,
                      fontSize: kSize * 2.5,
                    ),
                  ))
              
          ),
      ],
    );
  }
}






