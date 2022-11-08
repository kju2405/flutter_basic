import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  void initState() {
    //Stateful widget이 생성되는 순간 실행하고싶은것을 구현하면된다.
    // TODO: implement initState
    super.initState();

    print('initState is called');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    print('dispose is called');
  }

  @override
  Widget build(BuildContext context) {
    print('build is called');

    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Screen A'),
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
