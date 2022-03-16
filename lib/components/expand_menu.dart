import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/prices/body_prise.dart';
import 'package:migservice/components/prices/price_list.dart';
import '../controllers/counterController.dart';
import '../pages/home_screen.dart';
import '../pages/сontact_screen.dart';
import 'constants.dart';

class Entry {
  //класс хранящий параметры списка виджетов от которого наследуется data
  const Entry(this.title, this.function,
      [this.children =
      const <Entry>[]]); //список внутри списка не обязательный параметр
  final String title; //текст строки списка
  final Function function;
  final List<Entry> children; //вкладываемый список
}

class ExpansionTilE extends StatelessWidget {
  //виджет прокручиваемого списка
  final CounterController counterController = Get.put(CounterController());

  ExpansionTilE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          EntryItem(driwData[index], driwData[index]),
      itemCount: driwData.length,
    );
  }
}

final List<Entry> driwData = <Entry>[
  //список виджетов
  Entry('ГЛАВНАЯ', () {
    Get.to(HomeScreen());
  }),
  Entry(
    'РЕМОНТ',
    () {},
    <Entry>[
      Entry('СМАРФОНОВ', () {
        Get.to(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));
      }),
      Entry('ПЛАНШЕТОВ', () {
        Get.to(HomeScreen());
      }),
      Entry('НОУТБУКОВ', () {
        Get.to(HomeScreen());
      }),
      Entry('КОМПЬТЕРОВ', () {
        Get.to(HomeScreen());
      }),
      Entry('ТЕЛЕВИЗОРОВ', () {
        Get.to(HomeScreen());
      }),
      Entry('ФОТОАППАРАТОВ', () {
        Get.to(HomeScreen());
      }),
    ],
  ),
  Entry('УСЛУГИ', () {
    Get.to(HomeScreen());
  }),
  Entry('КОНТАКТЫ', () {
    Get.to(ContactInf());
  }),
  Entry('О НАС', () {
    Get.to(HomeScreen());
  }),
  Entry('МОИ РЕМОНТЫ', () {
    Get.to(HomeScreen());
  }),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.function);

  final Entry function;
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return ListTile(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: InkWell(
            splashColor: kPrimaryColor,
            onTap: root.function,
            child: Text(
              root.title,
              style: TextStyle(
                  color: kTextColor,
                  fontSize: kMobilSize * 4,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ),
        onTap: root.function,
      ); //если список children пуст
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ExpansionTile(
        iconColor: kTextColor,
        collapsedIconColor: kTextColor,
        key: PageStorageKey<Entry>(root),
        title: InkWell(
          splashColor: kPrimaryColor,
          child: Text(
            entry.title,
            style: TextStyle(
                color: kTextColor,
                fontSize: kMobilSize * 4,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w200),
          ),
        ),
        children: root.children
            .map(_buildTiles)
            .toList(), //проходит по всему списку children
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

