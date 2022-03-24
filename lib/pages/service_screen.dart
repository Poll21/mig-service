import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:migservice/controllers/counterController.dart';
import 'package:migservice/helpe/costum_appbar.dart';

class ServiceScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  ServiceScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarOthe(),
          FutureBuilder(
            future: _getImage(context, "ckul_nout.jpg"),
            builder: (context, snapshot) {
              if (snapshot.connectionState == CnnectionState.done) {
                return SizedBox(
                    width: 50,
                    height: 50,
                    child: snapshot.data,
                );
              }
            },
          ),

        ],
      ),);
  }
}

class CnnectionState {
}

Future<Widget> _getImage(BuildContext context, String imageName) async{
  Image image;
  await FireStorageService.loadImage(context, imageName).then((value) {
    image = Image.network(
      value.toString(),
      fit: BoxFit.scaleDown,
    );
  });
  return image;
}

class FireStorageService extends ChangeNotifier{
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String Image) async{
    return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
  }
}