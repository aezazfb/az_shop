import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseService {
  
  final String uid;
  DatabaseService({
    required this.uid
  });
  //Collection Referrence:D

  final CollectionReference productCollection = FirebaseFirestore.instance.collection('product');

  Future updateProduct(String nameOfProduct, int quantity, String expiryDate) async{
    await Firebase.initializeApp();
    return await productCollection.doc(uid).set({
      'quantity' : quantity,
      'name' : nameOfProduct,
      'expiry' : expiryDate
    }
    );
  }
}