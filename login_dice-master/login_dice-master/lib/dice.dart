import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDice=1;
  int rightDice=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Dice game'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('image/dice$leftDice.png')),  //주축을 기준으로 꽉 차게 이미지를 설정해줌.
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(child: Image.asset('image/dice$rightDice.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDice=Random().nextInt(6)+1;
                    rightDice=Random().nextInt(6)+1;
                  });
                  showToast('Left dice: {$leftDice},Right dice: {$rightDice}');
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40.0,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    minimumSize: Size(100.0, 60.0)),
              )
            ],
          ),
        ));
  }
}

void showToast(String message){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.white,
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM);
}