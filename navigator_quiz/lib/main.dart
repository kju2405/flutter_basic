import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context1) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('main page'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to ScreenA'),
            onPressed: () {
              Navigator.push(context1, MaterialPageRoute(builder: (_) =>ScreenA()));
            },
          ),
        ),
      )
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ScreenA',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
