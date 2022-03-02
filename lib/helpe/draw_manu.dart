import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/pages/home_screen.dart';

import '../components/attention_page.dart';
import '../components/constants.dart';
import '../components/prices/body_prise.dart';
import '../pages/сontact_Information.dart';

class TwoString {
  //класс который хранит две текстовах строки
  final String text;
  final Function function;

  TwoString({
    this.text,
    this. function,
  });
}

class DrawManu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final List<TwoString> textData = [
    //создаем лист тапа данных TwoString
    TwoString(text: 'Главная', function: (){Get.to(HomeScreen());}),
    TwoString(text: 'Ремонт', function: (){Get.to(BodyPrice());}),
    TwoString(text: 'Услуги', function: (){}),
    TwoString(text: 'Контакты', function: (){Get.to(ContactInf());}),
    TwoString(text: 'О нас', function: (){}),
    TwoString(text: 'Мои ремонты', function: (){}),
  ];

  DrawManu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget>
        textFields = //списку виджетов присваивается значение интерируемого листа
        textData
            .map((TwoString towString) => DrawManuItam(text: towString, function: towString,))
            .toList(); // .map интерируем textData и получаем текст, а .toList() преобразует в список виджетов

    final double width = MediaQuery.of(context).size.width;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: kDefaultPadding * kMobilSize * 1.2,
        width: width / 2,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 3, horizontal: kDefaultRadius),
          child: Image.asset('assets/logo.png', height: kDefaultPadding),
        ),
      ),
      Expanded(
        child: ListView(
          children: textFields,
        ),
      ),
    ]);
  }
}

//преобразуем телсе и виджет
class DrawManuItam extends StatelessWidget {
  final TwoString text;// обращаемся к созданному классу переменных TwoString
  final TwoString function;
  const DrawManuItam({Key key, this.text, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.only(left: kDefaultPadding,
            top: kDefaultPadding),
                child: InkWell(
                  splashColor: kPrimaryColor,
                  onTap: function.function,
                  child: Text(
                    text.text,
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: kMobilSize * 5,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w200),
                  ),
                ),
        ),

      ],
    );
  }
}
