import 'package:flutter/material.dart';
import '../constants/constants.dart';
//класс который хранит ссылку на фотографию и иформацию о сотруднике
class Employee {
  final String photo, position, name, experience, specification, image;
  Employee({
    this.photo,
    this.position,
    this.name,
    this.experience,
    this.specification,
    this.image,
  });
}
//дист сотрудников
List<Employee> allEmployee = [
  Employee(
      photo: 'assets/foto_engineer.jpg',
      position: 'Руководитель, инженер:',
      name: 'Мальцев Сергей Викторович',
      experience: '10',
      specification: 'ремонт ноутбуков, компьютеров, телевизоров.',
      image: 'assets/manuf.jpg'),
  Employee(
      photo: 'assets/foto_engineer.jpg',
      position: 'Инженер:',
      name: 'Голубцов Павел Иванович',
      experience: '15',
      specification: 'ремонт смартфонов, телефонов, фотокамер, планшетов, фотокамер.',
      image: 'assets/manuf.jpg'),
];

class ScrolAboutUS extends StatelessWidget {
  final double kSize;
  final int radius;
  final List<Employee> allEmployee;

  const ScrolAboutUS({
    Key key,
    this.kSize,
    this.allEmployee,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> employeeItem = allEmployee
        .map((Employee smartPrice) =>
        AbautUSTitl(
          photo: smartPrice,
          position: smartPrice,
          name: smartPrice,
          experience: smartPrice,
          specification: smartPrice,
          image: smartPrice,
          kSize: kSize,
          radius: radius,
        ))
        .toList();
    return ListView(
      scrollDirection: Axis.vertical,
      children: employeeItem,
    );
  }
}


class AboutUS extends StatelessWidget {
  final int radius;
  final double kSize;

  const AboutUS({Key key, this.radius, this.kSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: kPrimaryColor.withOpacity(0.30),
          child: ScrolAboutUS(kSize: kSize, radius: radius, allEmployee: allEmployee,)
      ),
    );
  }
}

class AbautUSTitl extends StatelessWidget {
  final Employee
  photo,
      position,
      name,
      experience,
      specification,
      image;
  final int radius;
  final double kSize;

  const AbautUSTitl(
      {Key key, this.radius, this.kSize, this.photo, this.position, this.name, this.experience, this.specification, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(kDefaultPadding),
              height: kSize * kDefaultRadius * 1.5,
              width: kSize * kDefaultRadius * 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(kDefaultRadius * radius)),
                image: DecorationImage(
                    alignment: AlignmentDirectional.center,
                    fit: BoxFit.cover,
                    image: AssetImage(photo.photo)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                height: kSize * kDefaultRadius * 1.5,
                width: kSize * kDefaultRadius * 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(position.position, style: TextStyle(
                      color: kTextColor,
                      fontSize: kSize * 5,
                    )),
                    Text(name.name, style: TextStyle(
                      color: kTextColor,
                      fontSize: kSize * 4,
                    )),
                    Text('Стаж работы: ' + experience.experience + ' лет',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: kSize * 4,
                        )),
                    Text('Специализация: ' + specification.specification,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: kSize * 4,
                        )),

                  ],
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(kDefaultPadding),
              height: kSize * kDefaultRadius * 1.5,
              width: kSize * kDefaultRadius * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(kDefaultRadius * radius)),
                image: DecorationImage(
                    alignment: AlignmentDirectional.center,
                    fit: BoxFit.cover,
                    image: AssetImage(image.image)),
              ),
            ),
          ),
        ]
    );
  }
}