import 'package:az_shop/services/database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OrderPage extends StatelessWidget{
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController mobileCtrl  = TextEditingController();
  TextEditingController addressCtrl = TextEditingController();
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new,
              size: 28,),

            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order Details",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(162, 0, 0, 0),
                    fontWeight: FontWeight.bold
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  controller: nameCtrl,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle: TextStyle(
                      fontSize: 20
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  controller: mobileCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Mobile",
                    hintStyle: TextStyle(
                      fontSize: 20
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  controller: addressCtrl,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Address",
                    hintStyle: TextStyle(
                      fontSize: 20
                    )
                  ),
                ),
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: () {
                  
                  DatabaseService(uid: 312.toString()).updateProduct(nameCtrl.text, int.parse(mobileCtrl.text.isNotEmpty == true ? mobileCtrl.text : "0"), addressCtrl.text).then((value){
                    Fluttertoast.showToast(msg: "Order Has Been Placed!");
                    
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Order Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFB608),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}