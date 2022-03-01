import 'package:flutter/material.dart';

import '../components/constants.dart';

class TwoString {
  //класс который хранит две текстовах строки
  final String text;
  final String text2;

  TwoString({
    this.text,
    this.text2,
  });
}

class DrawManu extends StatelessWidget {
  final List<TwoString> textData = [
    //создаем лист тапа данных TwoString
    TwoString(text: 'Главная', text2: 'HomeScree'),
    TwoString(text: 'Ремонт', text2: 'HomeScree'),
    TwoString(text: 'Услуги', text2: 'HomeScree'),
    TwoString(text: 'Контакты', text2: 'HomeScree'),
    TwoString(text: 'О нас', text2: 'HomeScree'),
    TwoString(text: 'Мои ремонты', text2: 'HomeScree'),
  ];

  DrawManu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget>
        textFields = //списку виджетов присваивается значение интерируемого листа
        textData
            .map((TwoString towString) => TextWraper(text: towString))
            .toList(); // .map интерируем textData и получаем текст, а .toList() преобразует в список виджетов

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: kDefaultPadding * kMobilSize * 1.6,
            color: kPrimaryColor,
          ),
          Expanded(
            child: ListView( children: textFields,),
          ),
         ]

        );
  }
}

//преобразуем телсе и виджет
class TextWraper extends StatelessWidget {
  final TwoString text; // обращаемся к созданному классу переменных TwoString
  const TextWraper({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text.text),
        Spacer(),
        Text(text.text2),
      ],
    );
  }
}
