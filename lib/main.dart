import 'package:az_shop/app_pages/CartPage.dart';
import 'package:az_shop/app_pages/HomePage.dart';
import 'package:az_shop/app_pages/HomePageGetX.dart';
import 'package:az_shop/app_pages/OrderPage.dart';
import 'package:az_shop/app_pages/itemPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zainab Love',
      theme: ThemeData(
        
        primarySwatch: Colors.lightGreen,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => HomePage(),
        "ItemPage" :(context) => ItemPage(),
        "cartPage" : ((context) => CartPage()),
        "orderPage" : ((context) => OrderPage())
      },
    );
  }
}

