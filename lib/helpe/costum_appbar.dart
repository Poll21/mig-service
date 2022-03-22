import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:migservice/components/constants.dart';
import 'package:migservice/components/expand_menu.dart';
import 'package:migservice/components/header_with_seachbox.dart';
import 'package:migservice/components/size_progect.dart';
import 'package:migservice/helpe/butoon_menu.dart';
import 'package:migservice/pages/my_service_screen.dart';
import '../components/expand_menu.dart';
import '../pages/home_screen.dart';

class CustomAppBar extends StatelessWidget {
  final icon;
  final Function pressIcon;

  CustomAppBar({Key key, this.icon, this.pressIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
      children: [
        Responsive(
          mobile: Container(
            height: kDefaultPadding * kMobilSize * 1.2,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultRadius),
                  bottomRight: Radius.circular(kDefaultRadius),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: kShadowColor.withOpacity(0.50),
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(width: kDefaultPadding),
                IconButton(
                    color: kTextColor,
                    icon: Icon(icon, color: kTextColor),
                    iconSize: kMobilSize * 5.0,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
                HeaderWithSearchBox(kSize: kMobilSize),
                IconButton(
                    color: kTextColor,
                    icon: Icon(Icons.zoom_in, color: kTextColor),
                    iconSize: kMobilSize * 5.0,
                    onPressed: () {
                      Get.to(MyServiceScreen());
                    }),
                SizedBox(width: kDefaultPadding),
              ],
            ),
          ),
          tablet: ButRoW(kSize: kTabletSize),
          desktop: ButRoW(kSize: kDesktopSize),
        ),
      ],
    ));
  }
}

class CustomAppBarOthe extends StatelessWidget {

    CustomAppBarOthe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Responsive(
              mobile: Container(
                height: kDefaultPadding * kMobilSize * 1.2,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kDefaultRadius),
                      bottomRight: Radius.circular(kDefaultRadius),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: kShadowColor.withOpacity(0.50),
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: kDefaultPadding),
                    IconButton(
                        color: kTextColor,
                        icon: Icon(Icons.arrow_back_ios, color: kTextColor),
                        iconSize: kMobilSize * 5.0,
                        onPressed: () {
                          Get.to(HomeScreen());
                        }),
                    HeaderWithSearchBox(kSize: kMobilSize),
                    IconButton(
                        color: kTextColor,
                        icon: Icon(Icons.zoom_in, color: kTextColor),
                        iconSize: kMobilSize * 5.0,
                        onPressed: () {
                          Get.to(MyServiceScreen());
                        }),
                    SizedBox(width: kDefaultPadding),
                  ],
                ),
              ),
              tablet: ButRoW(kSize: kTabletSize),
              desktop: ButRoW(kSize: kDesktopSize),
            ),
          ],
        ));
  }
}

class ButRoW extends StatelessWidget {
  const ButRoW({
    Key key,
    this.kSize,
  }) : super(key: key);
  final kSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDefaultPadding * kTabletSize * 1.6,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultRadius * 2),
            bottomRight: Radius.circular(kDefaultRadius * 2),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 50,
              color: kShadowColor.withOpacity(0.50),
            ),
          ]),
      child: Column(
        children: [
          ButtonMenu(kSize: kSize,),
          HeaderWithSearchBox(kSize: kTabletSize),
        ],
      ),
    );
  }
}
