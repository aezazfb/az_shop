import 'package:az_shop/getx/productState.dart';
import 'package:az_shop/mywidgets/BottomBar.dart';
import 'package:az_shop/mywidgets/HomePagePosts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ProductGetState productGetState = Get.put(ProductGetState());

  final CollectionReference _red = FirebaseFirestore.instance.collection("product");

  dynamic productVar;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            StreamBuilder(
                stream: _red.snapshots(),
                builder: (BuildContext stContext, AsyncSnapshot<QuerySnapshot> theSnap){
                  productVar = theSnap.data?.docs.toList();
                  num x = 0;
                  if(theSnap.hasData){
                    x= theSnap.data?.docs.length as num;
                  }


                  return theSnap.hasData ? Column(
                    children: [
                      for(int indx =0; indx <= x -1; indx ++)
                      Column(
                        children: [
                          Text(productVar[indx]["expiry"].toString()),
                          Text(productVar[indx]["name"].toString()),
                          Text(productVar[indx]["quantity"].toString()),
                        ],
                      ),
                    ],
                  ) :  CircularProgressIndicator();
                }),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                for(int i = 1; i<=2; i++)
                  Image.asset("myassets/cover$i.png",
                    height: 250,
                    fit: BoxFit.cover,),

              ]),
            ),

            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ],
              ),
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                shrinkWrap: true,
                children: [
                  for(int x = 1; x<=5; x++)
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],

                      ),
                      child: Image.asset("myassets/$x.png"),
                    )
                ],
              ),
            ),

            const HomePagePosts(),

          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}