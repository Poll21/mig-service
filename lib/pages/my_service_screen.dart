import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/helpe/costum_appbar.dart';
import '../controllers/counterController.dart';

class MyServiceScreen extends StatefulWidget {
  MyServiceScreen({Key key}) : super(key: key);

  @override
  State<MyServiceScreen> createState() => _MyServiceScreenState();
}

class _MyServiceScreenState extends State<MyServiceScreen> {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
        future: FutureStoreDataBase().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('eroor');
          } 
          if (snapshot.connectionState == ConnectionState.done) {
            return Image.network(snapshot.data.toString(),);
          }
          return const Center(child: CircularProgressIndicator(),);
      }  
      ),
      // Column(
      //   children: [
      //     CustomAppBarOthe(),
      // ],
      // ),
    );
  }
}

class FutureStoreDataBase {
  String downloadURL;
  Future getData() async{
    try {
      await downloadURLExample();
    return downloadURL;
    } catch(e) {
      debugPrint('Error -$e');
      return null;
    }   
  }
  Future<void>downloadURLExample() async{
    downloadURL = await FirebaseStorage.instance
    .ref()
    .child("FPC.jpg").
    getDownloadURL();
    debugPrint(downloadURL.toString());
  }
  
}
