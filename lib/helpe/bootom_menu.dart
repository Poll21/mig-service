import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/prices/body_prise.dart';
import 'package:migservice/components/prices/price_list.dart';
import 'package:migservice/controllers/counterController.dart';
import '../components/constants.dart';
import '../pages/about_us.dart';
import '../pages/home_screen.dart';
import '../pages/my_service_screen.dart';
import '../pages/service_screen.dart';
import '../pages/сontact_screen.dart';

class MenuString {
  final String text;
  final Function function;

  MenuString({
    this.text,
    this.function,
  });
}

class BootomMenuSmall extends StatelessWidget {
  final List<MenuString> botoonSmallData = [
    MenuString(text: 'Смартфоны',
      function: () {
        Get.offAll(BodyPrice(
            price: 'СМАРТФОНЫ', allPrices: smartPrice));
      },
    ),
    MenuString(text: 'Планшеты',
      function: () {
        Get.to(BodyPrice(
            price: 'Планшеты', allPrices: tabPrice));
      },
    ),
    MenuString(text: 'Планшеты',
      function: () {
        Get.to(BodyPrice(
            price: 'Планшеты', allPrices: tabPrice));
      },),
    MenuString(text: 'Планшеты',
      function: () {
        Get.to(BodyPrice(
            price: 'Планшеты', allPrices: tabPrice));
      },),
    MenuString(text: 'Планшеты',
      function: () {
        Get.to(BodyPrice(
            price: 'Планшеты', allPrices: tabPrice));
      },),
    MenuString(text: 'Планшеты',
      function: () {
        Get.to(BodyPrice(
            price: 'Планшеты', allPrices: tabPrice));
      },),
  ];
  final double kSize;

  BootomMenuSmall({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size .height;
    final List<Widget> botoonSmall =
    botoonSmallData.map((MenuString menuString) =>
        ButtonMenuItem(
          text: menuString.text, function: menuString.function, kSize: kSize,))
        .toList();
    return CustomSingleChildLayout(
        delegate: MySingleChildLayoutDelegate(
            width / 4,
            height / 3),
        child:
        AlertDialog(
          contentPadding: EdgeInsets.all(0),
          // actionsOverflowDirection: VerticalDirection.down,
          elevation: 0,
          backgroundColor: kPrimaryColor.withOpacity(1),
          title: Column(children: botoonSmall),
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
          Get.to(HomeScreen());
        },
      ),
      MenuString(text: 'Ремонт',
          function: () {
            showDialog(
                barrierColor: kPrimaryColor.withOpacity(0),
                context: context,
                builder: (BuildContext dialogContext) {
                  return BootomMenuSmall(kSize: kSize,);
                }); //добавить функцию
          }),
      MenuString(text: 'Услуги',
        function: () {
          Get.to(ServiceScreen());
        },),
      MenuString(text: 'Контакты',
        function: () {
          Get.to(ContactInf());
        },),
      MenuString(text: 'О нас',
        function: () {
          Get.to(AboutUsScreen());
        },),
      MenuString(text: 'О нас',
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

//преобразуем текст и виджет ButtonMenuItem
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
              )))

    ;
  }
}


//задает положение расширяемой кнопки "Ремонт"

class LocationBootons extends StatelessWidget {
  const LocationBootons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


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
