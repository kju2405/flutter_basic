import 'package:flutter/material.dart';

class ScrennC extends StatelessWidget {
  const ScrennC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('ScrennC',
        style: TextStyle(
          fontSize: 24.0
        ),),
      ),
    );
  }
}
