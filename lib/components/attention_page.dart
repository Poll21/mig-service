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
        child: Text('ВНИМАНИЕ!!!', style:  TextStyle(color: kRextColor, fontSize: kMobilSize * 6, fontWeight: FontWeight.bold,),
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
            Container(
              decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(kDefaultRadius/2)
              ),
              child: IconButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
                icon: Icon(Icons.phone, color: kTextColor,),),
            ),
            Container(

              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(kDefaultRadius/2)
              ),
              child:IconButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage())),
                icon: Icon(Costomicons.vk,color: kTextColor,),),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(kDefaultRadius/2)
              ),
              child:IconButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
                icon: Icon(Costomicons.whatsapp),color: kTextColor,),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kDefaultRadius/2)
              ),
              child:IconButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInf())),
                icon: Icon(Costomicons.instagram, color: Colors.red,),),
            ),



            Container(
              decoration: BoxDecoration(
                  color: kRextColor,
                  borderRadius: BorderRadius.circular(kDefaultRadius/2)
              ),
              child:IconButton(
                onPressed: () {Navigator.pop(context);},
                icon: Icon(Icons.close),color: kTextColor,  ),
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