import 'package:flutter/material.dart';
import 'package:multipage_navigator/ScreenA.dart';
import 'package:multipage_navigator/ScreenB.dart';
import 'package:multipage_navigator/ScreenC.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Page Navigator',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>ScreenA(),
        '/b':(context)=>ScreenB(),
        '/c':(context)=>ScrennC()
      },
    );
  }
}

//multipage기능을 구현할때 핵심 argument : initialRoute, routes