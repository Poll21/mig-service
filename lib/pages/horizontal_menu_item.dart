import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/components/constants.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itamName;
  final Function onTap;

  const HorizontalMenuItem({Key key, this.itamName, this.onTap}) : super(key: key);

  get menuController => null;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover:(value){
        value ?
        menuController.onHover(itamName) :
        menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itamName) ?
        kPrimaryColor.withOpacity(.1) : Colors.transparent,
        child: Row(
          children: [
            Visibility(visible: menuController.inHovering(itamName)
             || menuController.isActive(itamName),
            child: Container(
              width: 6,
              height: 40,
              color: kBackgroudColor,
            ),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
            ),

            SizedBox(width: _width/80),
            
            Padding(padding: EdgeInsets.all(16),
            child:  menuController.returnIconForm(itamName),)

            if(!menuController.isActive(itamName))
          ],
        ),
      )),
    );
  }
}
