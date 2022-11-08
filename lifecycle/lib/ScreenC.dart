import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go to ScreenA'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
