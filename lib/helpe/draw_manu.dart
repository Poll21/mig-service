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

// class DropdownRepairButton extends StatefulWidget {
//   const DropdownRepairButton({Key key}) : super(key: key);
//
//   @override
//   State<DropdownRepairButton> createState() => _DropdownRepairButton();
// }
// class _DropdownRepairButton extends State<DropdownRepairButton>{
//   String dropdownValue = 'РЕМОНТ';
//   String value = 'РЕМОНТ';
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: Icon(Icons.arrow_drop_down_sharp, color: Colors.black),
//       onChanged: (String newValue) {
//         setState(() {
//           dropdownValue = newValue;
//           });
//         },
//       items: <String>['One', 'Two', 'Free', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

// class ButtonMenu extends StatelessWidget {
//   final CounterController counterController = Get.put(CounterController());
//   final List<MenuString> textData = [
//     //создаем лист тапа данных TwoString
//     MenuString(text: 'Главная', function: (){Get.to(HomeScreen());}),
//     MenuString(text: 'Ремонт', function: (){Get.to(BodyPrice());}),
//     MenuString(text: 'Услуги', function: (){Get.to(ServiceScreen());}),
//     MenuString(text: 'Контакты', function: (){Get.to(ContactInf());}),
//     MenuString(text: 'О нас', function: (){Get.to(ContactInf());}),
//     MenuString(text: 'Мои ремонты', function: (){Get.to(MyServiceScreen());}),
//   ];
//
//   ButtonMenu({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget>
//     textFields = //списку виджетов присваивается значение интерируемого листа
//     textData
//         .map((MenuString towString) => ButtonMenuItam(text: towString, function: towString,))
//         .toList(); // .map интерируем textData и получаем текст, а .toList() преобразует в список виджетов
//     return Row(
//       children: textFields,
//     );
//   }
// }
// //преобразуем текст и виджет ButtonMenuItem
// class  ButtonMenuItam extends StatelessWidget {
//   final MenuString text;
//   final MenuString function;
//   final double kSize;
//
//   const ButtonMenuItam({
//     Key key,
//     @required
//     this.text,
//     this. function,
//     this.kSize,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: kSize * 14.0,
//         margin: EdgeInsets.only(left:
//         kDefaultPadding / 4,
//             right: kDefaultPadding / 4,
//             top: kDefaultPadding / 2,
//             bottom: kDefaultPadding / 2),
//         decoration: BoxDecoration(
//             border: Border.all(color: Colors.black12, width: 1),
//             borderRadius: BorderRadius.all(Radius.circular(10)),
//             boxShadow: [
//               BoxShadow(
//                 offset: Offset(0, 5),
//                 blurRadius: 5,
//                 color: kShadowColor.withOpacity(0.10),
//               ),
//             ]),
//         child: TextButton(
//             onPressed: function.function,
//             child: Text(
//               text.text,
//               style: TextStyle(
//                 fontWeight: FontWeight.w100,
//                 color: kTextColor,
//                 fontSize: kSize * 2.0,
//               ),
//             )));
//   }
// }

