import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counterController.dart';
import '../pages/home_screen.dart';
import '../pages/service_screen.dart';
import 'constants.dart';


class ExpansionTilE extends StatelessWidget {//виджет прокручиваемого списка
  final CounterController counterController = Get.put(CounterController());
   ExpansionTilE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> itemData =
            data.map((Entry data) => EntryItem(entry: data, )).toList();
      //билдер вызывающий виджетов EntryItem по индексу элемента списка data
      // itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      // itemCount: data.length,

  }
}

class Entry {//класс хранящий параметры списка виджетов от которого наследуется data
   const Entry(this.title, this.function, [this.children = const <Entry>[]]);//список внутри списка не обязательный параметр
  final String title; //текст строки списка
  final Function function;
  final List<Entry> children; //вкладываемый список
}

 final List<Entry> data = <Entry>[//список виджетов
  Entry('ГЛАВНАЯ', (){Get.to(HomeScreen());} ),
  Entry('РЕМОНТ', (){},
    <Entry>[
      Entry('СМАРФОНОВ',(){Get.to(HomeScreen());}),
      Entry('ПЛАНШЕТОВ',(){Get.to(HomeScreen());}),
      Entry('НОУТБУКОВ',(){Get.to(HomeScreen());}),
      Entry('КОМПЬТЕРОВ',(){Get.to(HomeScreen());}),
      Entry('ТЕЛЕВИЗОРОВ',(){Get.to(HomeScreen());}),
      Entry('ФОТОАППАРАТОВ',(){Get.to(HomeScreen());}),
    ],
  ),
  Entry('УСЛУГИ',(){Get.to(HomeScreen());}),
  Entry('КОНТАКТЫ',(){Get.to(HomeScreen());}),
  Entry('О НАС',(){Get.to(HomeScreen());}),
  Entry('МОИ РЕМОНТЫ',(){Get.to(HomeScreen());}),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.function);
  final Function function;
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));//если список children пуст
    return ExpansionTile(//иначе вызывается виджет раскрытия дополнительного списка children
      key: PageStorageKey<Entry>(root),
      title:  InkWell(
        splashColor: kPrimaryColor,
        onTap: entry.function,
        child: Text(
          entry.title,
          style: TextStyle(
              color: kTextColor,
              fontSize: kMobilSize * 5,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w200),
        ),
      ),
      children: root.children.map(_buildTiles).toList(), //проходит по всему списку children
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}