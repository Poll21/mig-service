import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
//класс который хранит ссылку на изображение, описание ицену услуги
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

List<PriceString> servicePrice = [
  PriceString(image: 'assets/8_fOyVKHrV4.jpg',title: 'Разблокировка устройства', price:1500,),
  PriceString(image: 'assets/android_logo_PNG27.png',title: 'Восстановление операционной системы (програмный ремонт без разбора устройства)', price:1500),
  PriceString(image: 'assets/LCD.jpg',title: 'Выезд для диагностики или забора оборудования', price:300,),
  PriceString(image: 'assets/LCD1.jpg',title: 'Технологическая чистка: очистка от пыли, смазка динамических элементов, замена термоотводящих прослоек', price:1200),
  PriceString(image: 'assets/tachskrin.jpg',title: 'Установка специализированного ПО, драйверов, переферийных устройств', price:500),
  PriceString(image: 'assets/microUSB.jpg',title: 'Програмная чистка устройства: вирусы, рекламные бамеры, не используемые файлы', price:1000),
  PriceString(image: 'assets/FPC.jpg',title: 'Сохранение или перенос информации', price:500),
  PriceString(image: 'assets/camer.jpg',title: 'Восстановление информации с поврежденных носителей', price:1000,),
];

// Future<Widget> _getImage(BuildContext context, String imageName) async{
//   Image image;
//   await FireStorageService.loadImage(context, imageName).then((value) {
//     image = Image.network(
//       value.toString(),
//       fit: BoxFit.scaleDown,
//     );
//   });
//   return image;
// }
//
// class FireStorageService extends ChangeNotifier{
//   FireStorageService();
//   static Future<dynamic> loadImage(BuildContext context, String sImage) async{
//     return await FirebaseStorage.instance.ref().child(sImage).getDownloadURL();
//   }
// }