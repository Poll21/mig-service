import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/helpe/costum_appbar.dart';
import '../controllers/counterController.dart';

class MyServiceScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  MyServiceScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          CustomAppBarOthe(),



        ],
      ),);
  }
}

class App extends StatelessWidget {
 final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _initialization, builder: (context, snapshot){
      if(snapshot.hasError){
        return Text(snapshot.error.toString());
      }
      if(snapshot.connectionState == ConnectionState.done) {
        return MyAwesomeApp();
      }
      return CircularProgressIndicator();
    });
  }
}

class MyAwesomeApp extends StatelessWidget{
  const MyAwesomeApp ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

