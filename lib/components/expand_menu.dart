import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/pages/prise_sreen.dart';
import 'package:migservice/components/prices/price_list.dart';
import '../controllers/counterController.dart';
import '../pages/home_screen.dart';
import 'constants.dart';


//класс хранящий параметры списка виджетов от которого насле дуется data
class Entry {
  const Entry(this.title, this.function,
      [this.children =
      const <Entry>[]]); //список внутри списка не обязательный параметр
  final String title; //текст строки списка
  final Function function;
  final List<Entry> children; //вкладываемый список
}
//виджет прокручиваемого списка
class ExpansionTilE extends StatelessWidget {
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
    Get.offAllNamed('/');
  }),
  Entry(
    'РЕМОНТ',
    () {},
    <Entry>[
      Entry('Смартфонов', () {
        Get.offAll(BodyPrice(price: 'СМАРТФОНЫ', allPrices: smartPrice));
      }),
      Entry('Планшетов', () {
        Get.offAll(HomeScreen());
      }),
      Entry('Ноутбуков', () {
        Get.offAll(HomeScreen());
      }),
      Entry('Компьютеров', () {
        Get.offAll(HomeScreen());
      }),
      Entry('Телевизаров', () {
        Get.offAll(HomeScreen());
      }),
      Entry('Фотокамер', () {
        Get.offAll(HomeScreen());
      }),
    ],
  ),
  Entry('УСЛУГИ', () {
    Get.offAllNamed('/Service');
  }),
  Entry('КОНТАКТЫ', () {
    Get.offAllNamed('/Contact');
  }),
  Entry('О НАС', () {
    Get.offAllNamed('/AboutUs');
  }),
  Entry('МОИ РЕМОНТЫ', () {
    Get.offAllNamed('/MyService');
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
      );
    //если список children пуст
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

