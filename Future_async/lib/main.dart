import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String result='no data found';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future test'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  futureTest();
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Future test',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                result,
                style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<void> futureTest() async{

    await Future.delayed(Duration(seconds: 3)).then((value){
      print('Here comes second');

      setState((){
        this.result='The data is fetched';
        print(result);
        print('Here comes third');
      });
    });
    print('Here comes first');
    print('Here is the last one');
  }
}


