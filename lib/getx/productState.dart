import 'dart:async';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ProductGetState  extends GetxController{

 StreamController productStreamController = StreamController();

 Stream<DocumentSnapshot> productStream = FirebaseFirestore.instance.collection("product").doc("312").snapshots();


 void startStream (){
  
  productStream.listen((event) {
   productStreamController.sink.add(event.data());
  });
 }

 @override
  void onClose() {
  productStreamController.close();
  }
}