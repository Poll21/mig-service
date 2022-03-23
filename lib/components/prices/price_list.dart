

//класс который хранит ссылку на изображение, описание ицену услуги
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class PriceString {
  final String title, image;
  final double price;
  PriceString({
    this.title,
    this.price,
    this.image,
  });
}

List<PriceString> smartPrice = [
  PriceString(image: 'assets/8_fOyVKHrV4.jpg',title: 'Восстановление устройства после удара или попадания жидкости', price:1500,),
  PriceString(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:1000),
  PriceString(image: 'assets/LCD.jpg',title: 'Замена модуля дисплей + сенсор', price:1000,),
  PriceString(image: 'assets/LCD1.jpg',title: 'Замена дисплея', price:1000),
  PriceString(image: 'assets/tachskrin.jpg',title: 'Замена сенсора', price:1000),
  PriceString(image: 'assets/microUSB.jpg',title: 'Замена системного разъема', price:1000),
  PriceString(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:500),
  PriceString(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:500,),
  PriceString(image: 'assets/recever.jpg',title: 'Замена динамика', price:500),
  PriceString(image: 'assets/mic.jpg',title: 'Замена микрофоны', price:500),
  PriceString(image: 'assets/Buser.jpg',title: 'Замена полифонического динамика', price:500),
  PriceString(image: 'assets/cover.jpg',title: 'Замена корпусных элементов', price:500),
  PriceString(image: 'assets/cpu_PNG42.png',title: 'Замена микросхемы', price:2500),
];

List<PriceString> tabPrice = [
  PriceString(image: 'assets/8_fOyVKHrV4.jpg',title: 'Восстановление устройства после удара или попадания жидкости', price:1500,),
  PriceString(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:1000),
  PriceString(image: 'assets/LCD.jpg',title: 'Замена модуля дисплей + сенсор', price:1000,),
  PriceString(image: 'assets/lcd.jpeg',title: 'Замена дисплея', price:1000),
  PriceString(image: 'assets/tich.jpg',title: 'Замена сенсора', price:1000),
  PriceString(image: 'assets/microUSB.jpg',title: 'Замена системного разъема', price:1000),
  PriceString(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:500),
  PriceString(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:500,),
  PriceString(image: 'assets/recever.jpg',title: 'Замена динамика', price:500),
  PriceString(image: 'assets/mic.jpg',title: 'Замена микрофоны', price:500),
  PriceString(image: 'assets/Buser.jpg',title: 'Замена полифонического динамика', price:500),
  PriceString(image: 'assets/cover.jpg',title: 'Замена корпусных элементов', price:500),
  PriceString(image: 'assets/cpu_PNG42.png',title: 'Замена микросхемы', price:2500),
];

List<PriceString> noutboockPrice = [
  PriceString(image: 'assets/8_fOyVKHrV4.jpg',title: 'Восстановление устройства после удара или попадания жидкости', price:1500,),
  PriceString(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:1000),
  PriceString(image: 'assets/LCD.jpg',title: 'Замена модуля дисплей + сенсор', price:1000,),
  PriceString(image: 'assets/LCD1.jpg',title: 'Замена дисплея', price:1000),
  PriceString(image: 'assets/tachskrin.jpg',title: 'Замена сенсора', price:1000),
  PriceString(image: 'assets/microUSB.jpg',title: 'Замена системного разъема', price:1000),
  PriceString(image: 'assets/FPC.jpg',title: 'Замена межплатного шлефа', price:500),
  PriceString(image: 'assets/camer.jpg',title: 'Замена модуля камеры', price:500,),
  PriceString(image: 'assets/recever.jpg',title: 'Замена динамика', price:500),
  PriceString(image: 'assets/mic.jpg',title: 'Замена микрофоны', price:500),
  PriceString(image: 'assets/Buser.jpg',title: 'Замена полифонического динамика', price:500),
  PriceString(image: 'assets/cover.jpg',title: 'Замена корпусных элементов', price:500),
  PriceString(image: 'assets/cpu_PNG42.png',title: 'Замена микросхемы', price:2500),
];

class FireStorageService extends ChangeNotifier{
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String sImage) async{
    return await FirebaseStorage.instance.ref().child(sImage).getDownloadURL();
  }
}