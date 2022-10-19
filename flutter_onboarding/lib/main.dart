import 'package:flutter/material.dart';
import 'onboarding.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'On-Boarding',
      home: OnBoardingPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Main Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const OnBoardingPage())); //pushReplacement : 돌아가는 버튼 안보임.
            }, child: const Text('Go to onboarding screen'))
          ],
        ),
      ),
    );
  }
}
