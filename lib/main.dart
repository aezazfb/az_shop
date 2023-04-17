import 'package:az_shop/app_pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
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
      },
    );
  }
}

