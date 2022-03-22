import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/pages/prise_sreen.dart';
import 'package:migservice/components/prices/price_list.dart';
import 'package:migservice/controllers/counterController.dart';
import '../components/constants.dart';
import '../pages/about_us.dart';
import '../pages/сontact_screen.dart';

//сласс хронящий имя страници и маршрут к ней
class MenuString {
  final String text;
  final Function function;

  MenuString({
    this.text,
    this.function,
  });
}
//всплывающее мень
class ButoonMenuSmall extends StatelessWidget {
  final List<MenuString> butoonSmallData = [
    MenuString(text: 'Смартфоны',
      function: () {
        Get.offAll(BodyPrice(
            price: 'СМАРТФОНЫ', allPrices: smartPrice));
      },
    ),
    MenuString(text: 'Планшеты',
      function: () {
        Get.offAll(BodyPrice(
            price: 'ПЛАНШЕТОВ', allPrices: tabPrice));
      },
    ),
    MenuString(text: 'Ноутбуков',
      function: () {
        Get.offAll(BodyPrice(
            price: 'НОУТБУКОВ', allPrices: tabPrice));
      },),
    MenuString(text: 'Компьтеров',
      function: () {
        Get.offAll(BodyPrice(
            price: 'КОМПБЮТЕРОВ', allPrices: tabPrice));
      },),
    MenuString(text: 'Телевизаров',
      function: () {
        Get.offAll(BodyPrice(
            price: 'ТЕЛЕВИЗОРОВ', allPrices: tabPrice));
      },),
    MenuString(text: 'Фотокамер',
      function: () {
        Get.offAll(BodyPrice(
            price: 'ФОТОКАМЕР', allPrices: tabPrice));
      },),
  ];
  final double kSize;

  ButoonMenuSmall({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size .height;
    final List<Widget> butoonSmall =
    butoonSmallData.map((MenuString menuString) =>
        ButtonMenuItem(
          text: menuString.text, function: menuString.function, kSize: kSize,))
        .toList();
    return CustomSingleChildLayout(
        delegate: MySingleChildLayoutDelegate(
            width / 4,
            height / 3.1),
        child:
        AlertDialog(
          contentPadding: EdgeInsets.all(0),
          // actionsOverflowDirection: VerticalDirection.down,
          elevation: 0,
          backgroundColor: kPrimaryColor.withOpacity(0),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: butoonSmall),
        ));
  }
}

class BootomMenuBig extends StatelessWidget {
  final double kSize;

  BootomMenuBig({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuString> botoonBigData = [
      MenuString(text: 'Главная',
        function: () {
          Get.offAllNamed('/');
        },
      ),
      MenuString(text: 'Ремонт',
          function: () {
            showDialog(   //вызывает всплывающие кнорки
                barrierColor: kPrimaryColor.withOpacity(0),
                context: context,
                builder: (BuildContext dialogContext) {
                  return ButoonMenuSmall(kSize: kSize,);
                }); //добавить функцию
          }),
      MenuString(text: 'Услуги',
        function: () {
          Get.offAllNamed('/Service');
        },),
      MenuString(text: 'Контакты',
        function: () {
          Get.to(ContactInf());
        },),
      MenuString(text: 'О нас',
        function: () {
          Get.to(AboutUsScreen());
        },),
      MenuString(text: 'Мои ремонты',
        function: () {
          Get.to(AboutUsScreen());
        },),
    ];
    final List<Widget> botoonBig =
    botoonBigData.map((MenuString menuString) =>
        ButtonMenuItem(
          text: menuString.text, function: menuString.function, kSize: kSize,))
        .toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: botoonBig,);
  }
}
//строка основного меню
class ButtonMenu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final double kSize;

  ButtonMenu({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    final double height = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: BootomMenuBig(kSize: kSize)
    );
  }
}
//отрисовка отдельной кнопки меню
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
    return
      Container(
          width: kSize * 20.0,
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.5),
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
              )
          )
      );
  }
}
//делигат задающий роложение всплавающего меню
class MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  MySingleChildLayoutDelegate(this.width, this.height);

  final double width;
  final double height;

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(-width, -height);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate) {
    return true;
  }
}
