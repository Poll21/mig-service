import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/pages/home_screen.dart';
import '../components/constants.dart';
import '../components/expand_menu.dart';
import '../pages/about_us.dart';
import '../pages/my_service_screen.dart';
import '../pages/service_screen.dart';
import '../pages/сontact_screen.dart';

class MenuString {//класс который хранит текст и функцию
  final String text;
  final Function function;

  MenuString({
    this.text,
    this. function,
  });
}

class DrawManu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final List<MenuString> textData = [
    //создаем лист тапа данных TwoString
    MenuString(text: 'Главная', function: (){Get.to(HomeScreen());}),
    MenuString(text: 'Ремонт', function: () {}),

    MenuString(text: 'Услуги', function: (){Get.to(ServiceScreen());}),
    MenuString(text: 'Контакты', function: (){Get.to(ContactInf());}),
    MenuString(text: 'О нас', function: (){Get.to(AboutUsScreen());}),
    MenuString(text: 'Мои ремонты', function: (){Get.to(MyServiceScreen());}),
  ];

  DrawManu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget>
         textFields = //списку виджетов присваивается значение интерируемого листа
        textData
            .map((MenuString towString) => DrawManuItam(text: towString, function: towString,))
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
        child: ExpansionTilE()
      ),
    ]);
  }
}

//преобразуем текст и виджет DrawManuItam
class DrawManuItam extends StatelessWidget {
  final MenuString text;// обращаемся к созданному классу переменных TwoString
  final MenuString function;
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

