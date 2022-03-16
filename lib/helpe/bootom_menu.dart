import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/attention_page.dart';
import 'package:migservice/components/prices/body_prise.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/smol_bootom_menu.dart';
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

class DropdownButtonRepair extends StatefulWidget {
  final CounterController counterController = Get.put(CounterController());

  DropdownButtonRepair({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DropdownButtonRepairState();
}

class _DropdownButtonRepairState extends State<DropdownButtonRepair> {
  static const menuItems = <Widget>[
    Text(
      "Смар",
      style: TextStyle(
        fontWeight: FontWeight.w100,
        color: kTextColor,
        fontSize: kTabletSize * 2.5,
      ),
    ),
    Text('Two'),
    Text('Three'),
    Text('Four'),
  ];
  final List<DropdownMenuItem<Widget>> _dropDownMenuItems = menuItems
      .map(
        (Widget value) => DropdownMenuItem<Widget>(

          value: value,
          child: ButtonDropItem(kSize: kTabletSize,),
        ),
      )
      .toList();

  String _btn2SelectedVal;

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        width: kTabletSize * 20.0,
        height: kTabletSize * 5,
        margin: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 5,
                color: kShadowColor.withOpacity(0.10),
              ),
            ]),
        child: DropdownButton(
          isExpanded: true,
          autofocus: true,
          // value: _btn2SelectedVal,
          hint: const Center(child: Text(
              'Ремонт',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: kTextColor,
                fontSize: kTabletSize * 2.5,
              ),)
          ),
          onChanged: (Function) {
            Get.to(ServiceScreen());
          },
          items: _dropDownMenuItems,
        )),);
  }
}

class ButtonDropItem extends StatelessWidget {
  final double kSize;
  final MenuString text;
  final MenuString function;

  const ButtonDropItem({Key key, this.kSize, this.text, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: kSize * 20.0,
            margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 2),
            decoration: BoxDecoration(
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
                onPressed: function.function,
                child: Text(
                  text.text,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: kTextColor,
                    fontSize: kSize * 2.5,
                  ),
                ))),
      ],
    );
  }
}

class ButtonMenu extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  final double kSize;

  ButtonMenu({Key key, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      ButtonMenuItem(
        text: 'Главная',
        function: () {
          Get.to(HomeScreen());
        },
        kSize: kSize,
      ),
      DropdownButtonRepair(),
      ButtonMenuItem(
        text: 'Услуги',
        function: () {
          Get.to(ServiceScreen());
        },
        kSize: kSize,
      ),
      ButtonMenuItem(
        text: 'Контакты',
        function: () {
          Get.to(ContactInf());
        },
        kSize: kSize,
      ),
      ButtonMenuItem(
        text: 'О нас',
        function: () {
          Get.to(AboutUsScreen());
        },
        kSize: kSize,
      ),
      ButtonMenuItem(
        text: 'Мои ремонты',
        function: () {
          Get.to(MyServiceScreen());
        },
        kSize: kSize,
      ),
    ]);
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: kSize * 20.0,
            margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 2),
            decoration: BoxDecoration(
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
                ))),
      ],
    );
  }
}
