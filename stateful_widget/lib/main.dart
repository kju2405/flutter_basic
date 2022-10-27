import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //immutable 클래스
  @override
  State<StatefulWidget> createState() {
    //StatefulWidget이 생성될때마다 호출되는 메서드이다.
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //MyAppState클래스는 State 클래스를 상속받아야함.
  // State class의 generics를 MyApp으로 지정하면서 위의 클래스와 연결

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text(
                '$counter', //Text widget은 stateless widget이다.
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          counter++;
                          print('$counter');
                        });
                      }),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          counter--;
                          print('$counter');
                        });
                      })
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
              print('$counter');
            });
          },
        ),
      ),
    );
  }
}
