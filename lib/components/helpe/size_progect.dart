import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  //создаем переменные определяющие размеры виджитов, в зависимости от размеров экрана
  const Responsive({
    Key key,
    @override
    this.mobile,
    this.tablet,
    this.desktop,

  }) : super(key: key);

  // определяем размеры экрана
  static bool isMobil(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context){
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1100) {
      return desktop;
    }
    if (_size.width >=850 && _size.width < 1100) {
      return tablet;
    }
    else {
      return mobile;
    }
  }

}
