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

class MenuString {//класс который хранит текст и функцию
  final String text;
  final Function function;
  final Widget widget;

  MenuString( {this.widget,
    this.text,
    this. function,
  });
}

class ButtonMenu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final double kSize;

  ButtonMenu({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuString> textData = [
      //создаем лист тапа данных TwoString
      MenuString(
          text: 'Главная',
          function: () {
            Get.to(HomeScreen());
          }),
      MenuString(
        text: 'Ремонт',
        function: (){}

          ),
      MenuString(
          text: 'Услуги',
          function: () {
            Get.to(ServiceScreen());
          }),
      MenuString(
          text: 'Контакты',
          function: () {
            Get.to(ContactInf());
          }),
      MenuString(
          text: 'О нас',
          function: () {
            Get.to(AboutUsScreen());
          }),
      MenuString(
          text: 'Мои ремонты',
          function: () {
            Get.to(MyServiceScreen());
          }),
    ];

    final List<Widget>
    textFields = //списку виджетов присваивается значение интерируемого листа
    textData
        .map((MenuString towString) => ButtonMenuItem(
      text: towString,
      function: towString,
      kSize: kSize,
    ))
        .toList(); // .map интерируем textData и получаем текст, а .toList() преобразует в список виджетов
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: textFields,
        );
  }
}

//преобразуем текст и виджет ButtonMenuItem
class ButtonMenuItem extends StatelessWidget {
  final MenuString text;
  final MenuString function;
  final double kSize;

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
                //onFocusChange: function.function,
                  onPressed: function.function,
                  child: Text(
                    text.text,
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: kTextColor,
                      fontSize: kSize * 2.5,
                    ),
                  )),
          ),
      ],
    );
  }
}

