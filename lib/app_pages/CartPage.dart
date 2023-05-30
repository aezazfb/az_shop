import 'package:az_shop/mywidgets/CartBottomBar.dart';
import 'package:az_shop/mywidgets/CartItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override

  State<CartPage> createState() => _CartPageState();
}

class _CartPageState   extends State<CartPage>{
  bool checkedValue = false;
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Icon(Icons.arrow_back_ios_new),
              ),
              Text("MyCart",
              style: TextStyle(
                color: Color(0xFFFFB608),
                fontSize: 19,
              ),),
              Spacer(),
              InkWell(onTap: () {
                
              },
                child: Icon(CupertinoIcons.bell_fill,
                color: Color(0xFFFFB608),)
                )
            ],
          ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children:[
                 CheckboxListTile(title: Text("Select ALl ",
              style: TextStyle(
                fontSize: 18,
            
              ),),
                value: checkedValue, 
                onChanged: (newVal){
                setState(() {
                  checkedValue = newVal!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            
              ),
              Divider(height: 30, thickness: 1,),
              CartItem()
              ]
            ),

          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(  
              color: Colors.white,            
              boxShadow: [BoxShadow(
                spreadRadius: 1,
                blurRadius: 5,
                color: Colors.black.withOpacity(0.2),
              )]
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub-Total",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0)
                    ),),
                    Text("\$300",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0)
                    ),),
                  ],
                ),
                Divider(thickness: 1, height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Service-Charges",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0)
                    ),),
                    Text("\$100",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0)
                    ),),
                  ],
                ),
                Divider(thickness: 1, height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0)
                    ),),
                    Text("-\$51",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0)
                    ),),
                  ],
                ),
                Divider(thickness: 1, height: 20,)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    ); 
  }
}