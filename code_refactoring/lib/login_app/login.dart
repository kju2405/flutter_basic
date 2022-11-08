import 'package:code_refactoring/my_button/my_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: buildButton(),
    );
  }

  Widget buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyButton(
              image: Image.asset('images/glogo.png'),
              text: Text(
                'Login with Google',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                ),
              ),
              color: Colors.white,
              onPressed: () {},
              radius: 4.0),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
              image: Image.asset('images/flogo.png'),
              text: Text(
                'Login with Facebook',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Color(0xFF334D92),
              onPressed: () {},
              radius: 4.0),
          SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    //Text를 가운데 오게끔 하기위해 사용한 일종의 trick.
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
