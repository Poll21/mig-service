import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:migservice/generated/costomicons_icons.dart';
import '../components/constants/constants.dart';
import '../components/helpe/costum_appbar.dart';
import '../components/helpe/size_progect.dart';
import '../components/widget/price_heading.dart';
import '../components/widget/title_page.dart';

class ContactInf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: Column(children: [
        CustomAppBarOthe(),
        TitlePag(title: 'Свяжитесь с нами:'),
        Responsive(
          mobile: PriceHeading(radius: 1, widget: Hand(kSize: kMobilSize, text: 'г.Барнаул, пр.Красоармейский 4')),
          tablet: PriceHeading(radius: 2, widget: Hand(kSize: kMobilSize, text: 'г.Барнаул, пр.Красоармейский 4')),
          desktop: PriceHeading(radius: 2, widget: Hand(kSize: kMobilSize, text: 'г.Барнаул, пр.Красоармейский 4')),
        ),
        Responsive(
          mobile: ContInformMob(kSize: kMobilSize),
          tablet: ContInform(kSize: kTabletSize),
          desktop: ContInform(kSize: kDesktopSize),
        ),
      ]),
    );
  }
}

//режим работы
class OperatingMode extends StatelessWidget {
  const OperatingMode({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.40),
              borderRadius: BorderRadius.all(
              Radius.circular(kDefaultRadius),
              )
            ),
            child: Column(children: [
              Text('Режим работы:',
                style: TextStyle(color: kTextColor, fontSize: kSize * 5),),
              Text('Пн. 10:00-19:00',
                style: TextStyle(color: kTextColor, fontSize: kSize * 4),),
              Text('Вт. 10:00-19:00',
                style: TextStyle(color: kTextColor, fontSize: kSize * 4),),
              Text('Ср. 10:00-19:00',
                style: TextStyle(color: kTextColor, fontSize: kSize * 4),),
              Text('Чт. 10:00-19:00',
                style: TextStyle(color: kTextColor, fontSize: kSize * 4),),
              Text('Пт. 10:00-19:00',
                style: TextStyle(color: kTextColor, fontSize: kSize * 4),),
              Text('Сб. 10:00-19:00*',
                style: TextStyle(color: kRextColor, fontSize: kSize * 4),),
              Text('Вб. 10:00-19:00*',
                style: TextStyle(color: kRextColor, fontSize: kSize * 4),),
              Padding(
               padding: EdgeInsets.all(kDefaultPadding),
                child: Text('*В субботу и воскресенье сервисный центр работает в режиме приема и выдачи.',
                  style: TextStyle(color: kRextColor, fontSize: kSize * 3),),
          ),
        ]),
      )),
    );
  }
}

//отображение иконки
class IconCont extends StatelessWidget {
  const IconCont({
    Key key,
    this.kSize,
    this.kColor,
    this.kIcon,
    this.press,
  }) : super(key: key);
  final double kSize;
  final kColor;
  final kIcon;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(kDefaultPadding),
      height: kSize * 8,
      width: kSize * 8,
      decoration: BoxDecoration(
          color: kColor,
          borderRadius: BorderRadius.circular(kDefaultRadius / 2)),
      child: IconButton(
        onPressed: press,
        icon: Icon(
          kIcon,
          size: kSize * 5,
          color: kTextColor,
        ),
      ),
    );
  }
}

//список контактов
class ContInform extends StatelessWidget {
  const ContInform({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: kPrimaryColor.withOpacity(0.30),
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                OperatingMode(
                  kSize: kSize,
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconCont(
                      kSize: kSize,
                      kColor: Colors.green[500],
                      kIcon: Icons.phone,
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactInf())),
                    ),
                    Column(children: [
                      Text(
                        '+7(3852)-210-74-43',
                        style: TextStyle(
                            color: kTextColor, fontSize: kDesktopSize * 2.5),
                      ),
                      Text(
                        '+7-913-210-74-43',
                        style: TextStyle(
                            color: kTextColor, fontSize: kDesktopSize * 2.5),
                      ),
                    ]),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconCont(
                        kSize: kSize,
                        kColor: Colors.blue,
                        kIcon: Costomicons.vk,
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactInf())),
                      ),
                      Text(
                        'vk.com/mig_service22',
                        style: TextStyle(
                            color: kTextColor, fontSize: kDesktopSize * 2.5),
                      ),
                    ]),
                SizedBox(height: kDefaultPadding),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconCont(
                        kSize: kSize,
                        kColor: Colors.green[500],
                        kIcon: Costomicons.whatsapp,
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactInf())),
                      ),
                      Text(
                        '+7-913-210-74-43',
                        style: TextStyle(
                            color: kTextColor, fontSize: kDesktopSize * 2.5),
                      ),
                    ]),
              ]),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: kPrimaryColor.withOpacity(0.30),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(children: [
                        Container(
                          margin: EdgeInsets.all(kDefaultPadding),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: kSize * 30,
                                  width: kSize * 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(kDefaultRadius)),
                                    image: DecorationImage(
                                        alignment: AlignmentDirectional.center,
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/1.jpg')),
                                  ),
                                ),
                                Container(
                                  height: kSize * 30,
                                  width: kSize * 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(kDefaultRadius)),
                                    image: DecorationImage(
                                        alignment: AlignmentDirectional.center,
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/Coms4.jpg')),
                                  ),
                                ),
                                Container(
                                  height: kSize * 30,
                                  width: kSize * 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(kDefaultRadius)),
                                    image: DecorationImage(
                                        alignment: AlignmentDirectional.center,
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/2.jpg')),
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(kDefaultPadding * 2),
                          height: kSize * 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(kDefaultRadius)),
                            image: DecorationImage(
                                alignment: AlignmentDirectional.center,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/Map.jpg')),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

//список контактов для мобильной версии
class ContInformMob extends StatelessWidget {
  const ContInformMob({
    Key key,
    this.kSize,
  }) : super(key: key);
  final double kSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: kPrimaryColor.withOpacity(0.30),
        child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          OperatingMode(
            kSize: kSize,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconCont(
                  kSize: kSize,
                  kColor: Colors.green[500],
                  kIcon: Icons.phone,
                  press: () {
                    Get.offAllNamed('/Contact');
                  }),
              IconCont(
                  kSize: kSize,
                  kColor: Colors.blue,
                  kIcon: Costomicons.vk,
                  press: () {
                    Get.offAllNamed('/Contact');
                  }),
              IconCont(
                  kSize: kSize,
                  kColor: Colors.green[500],
                  kIcon: Costomicons.whatsapp,
                  press: () {
                    Get.offAllNamed('/Contact');
                  }),
            ],
          ),
          Container(
            height: kSize * 100,
            margin: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
              image: DecorationImage(
                  alignment: AlignmentDirectional.center,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/Map.jpg')),
            ),
          ),
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: kSize * 20,
                    width: kSize * 15,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius / 2)),
                      image: DecorationImage(
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/1.jpg')),
                    ),
                  ),
                  Container(
                    height: kSize * 20,
                    width: kSize * 15,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius / 2)),
                      image: DecorationImage(
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Coms4.jpg')),
                    ),
                  ),
                  Container(
                    height: kSize * 20,
                    width: kSize * 15,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius / 2)),
                      image: DecorationImage(
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/2.jpg')),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}

class Hand extends StatelessWidget {
  final double kSize;
  final String text;
  const Hand({
    Key key,
    this.kSize, this.text,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Center(
        child: FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultRadius),
              child: Text(text,
              style: TextStyle(
            color: kTextColor,
            fontSize: kSize * 10,
          )),
    )));
  }
}
