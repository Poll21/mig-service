import 'package:flutter/material.dart';
import 'package:migservice/components/prices/%D1%81ontact_Information.dart';
import 'package:migservice/components/prices/contact_pag.dart';
import 'constants.dart';
import 'package:migservice/costomicons_icons.dart';

class AttentionPage extends StatelessWidget {
  const AttentionPage({
    Key key,
    @required this.kSize,
  }) : super(key: key);

  final double kSize;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text('ВНИМАНИЕ!!!', style:  TextStyle(color: kRextColor, fontSize: kMobilSize * 5, fontWeight: FontWeight.bold,),
        ),
      ),
      content: Container(
        height: 50 * kSize,
        width: 60 * kSize,
        child: ListView(
          children: [
            Text('Сроки оказания услуг могут завистить от сроков поставки запчастей и сложности монтажа устройства.',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 4 * kSize),
            ),
            Text('В прайсе указани минимальная стоимость услуг, может менятся, в зависимоти от стоимости запасных частей и сложности монтажа устройства.',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 4 * kSize),
            ),
            Text('Для уточнения сроков и стоимости ремонта свяжитель с нами:',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 4 * kSize),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconCont(
              kSize: kSize,
              kColor: Colors.green[500],
              kIcon: Icons.phone,
              press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
            ),
            IconCont(
              kSize: kSize,
              kColor: Colors.blue,
              kIcon: Costomicons.vk,
              press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
            ),
            IconCont(
              kSize: kSize,
              kColor: Colors.green[500],
              kIcon: Costomicons.whatsapp,
              press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
            ),
            IconCont(
              kSize: kSize,
              kColor: Colors.red,
              kIcon: Icons.clear_sharp,
              press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
            ),



          ],
        )
      ],
      backgroundColor: kPrimaryColor.withOpacity(0.90),
      shape: RoundedRectangleBorder(borderRadius:
      BorderRadius.circular(kDefaultRadius)),
    );
  }
}


