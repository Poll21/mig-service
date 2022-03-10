import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreenN(),
    );
  }
}

class HomeScreenN extends StatelessWidget {
  const HomeScreenN({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      drawer: Drawer(child: ExpansionTilE()),
    );
  }
}


class ExpansionTilE extends StatelessWidget {//виджет прокручиваемого списка
  const ExpansionTilE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //билдер вызывающий виджетов EntryItem по индексу элемента списка data
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

class Entry {//класс хранящий параметры списка виджетов от которого наследуется data
  const Entry(this.title, [this.children = const <Entry>[]]);//список внутри списка не обязательный параметр
  final String title; //текст строки списка
  final List<Entry> children; //вкладываемый список
}

const List<Entry> data = <Entry>[//список виджетов
  Entry(
    'Ремонт',
    <Entry>[
      Entry('Смартфонов'),
      Entry('Планшетов'),
      Entry('Ноутбуков'),
    ],
  ),
  Entry(
    'о нас',
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));//если список children пуст
    return ExpansionTile(//иначе вызывается виджет раскрытия дополнительного списка children
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(), //проходит по всему списку children
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}