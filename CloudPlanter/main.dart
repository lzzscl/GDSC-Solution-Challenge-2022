// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myapp/assets/routes.dart';
//import 'package:myapp/image_show.dart';
import 'package:myapp/pages/welcome/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imageFileName = "1.png";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tree Market',
      home: WelcomePage(),
      routes: staticRoutes,
    );
  }
}
