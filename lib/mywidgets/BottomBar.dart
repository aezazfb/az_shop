import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(13),
        topLeft: Radius.circular(13)),
        color: Colors.white70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (() {
              
            }),
            child: Column(
              children: [
              Icon(Icons.home_outlined,
                size: 37,
                color: Color(0xFFFFB608),
              ),
              Text("Home",
                style: TextStyle(
                    color: Colors.amber.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 13
                ),)
            ],),
          ),
          InkWell(
            onTap: () {
              
            },
            child: Column(
              children: [
                Icon(CupertinoIcons.search,
                  size: 37,
                  color: Color(0xFFFFB608),
                ),
                Text("Explore",
                  style: TextStyle(
                      color: Colors.amber.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                  ),)
              ],),
          ),
          InkWell(
            onTap: () {
              
            },
            child: Column(
              children: [
                Icon(CupertinoIcons.cart,
                  size: 37,
                  color: Color(0xFFFFB608),
                ),
                Text("Cart",
                  style: TextStyle(
                      color: Colors.amber.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                  ),)
              ],),
          ),
          InkWell(
            onTap: () {
              
            },
            child: Column(
              children: [
                Icon(Icons.person,
                  size: 37,
                  color: Color(0xFFFFB608),
                ),
                Text("Account",
                  style: TextStyle(
                      color: Colors.amber.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                  ),)
              ],),
          ),

        ],
      ),
    );
  }
}
