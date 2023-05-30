import 'package:az_shop/mywidgets/itemBottomBar.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 230, 177),
            width: double.infinity,
            height: 390,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5
                        )],
                        
                      ),
                      child: Icon(Icons.favorite),
                    )
                  ],
                ),
              ),
              Image.asset(
                "myassets/2.png",
                width: 280,
                fit: BoxFit.contain,)
            ]),
          ),
          SizedBox(height: 15,),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ItemName",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                Column(
                  children: [
                    Text("\$50",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFB608),
                    ),),
                    Text("400Grams",
                    style: TextStyle(
                      fontSize: 15,
                    ),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Product Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8,),
                Text('''Item 
                description menbtioned!
                 Item description menbtioned!Item
                  description menbtioned!Item description
                  Item description menbtioned!
                  Item description menbtioned!
                   menbtioned!Item description menbtioned!''',
                   style: TextStyle(
                    fontSize: 18
                   ),)
            ]),
          ),
          SizedBox(height: 9,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 19),
              child: Text("You May Like",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                
              ),),),
              SizedBox(
                height: 5,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int x = 1; x<=4; x++)
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 8, bottom: 8, left: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.2)
                          ),                          
                        ]
                      ),

                      child: Image.asset("myassets/$x.png",
                      fit: BoxFit.contain,
                      ),
                      
                    )
                  ],
                ),
              )

            ],
          )
        ],
      ),
      bottomNavigationBar: ItemBottomBar(),
    );
  }
}
