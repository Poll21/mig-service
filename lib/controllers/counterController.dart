import 'package:get/get.dart';

import '../pages/home_screen.dart';
//создаем переменную для отслеживания контроллер
class CounterController extends GetxController{
  var counter = 0.obs; //obs говорит нам о том что мы будем наблюдать за изменением в данной переменной

  void increment (){
    counter++;//метод увеличивающий переменную на 1
  }

}

