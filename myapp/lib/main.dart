import 'package:flutter/material.dart';

void main() => runApp(MyApp());// =>는 main함수가 다른 함수를 호출한다는 의미로 사용됨. 따라서 => 뒤에 함수가 와야함.
                              // runApp()에는 argument로서 위젯이 와야함.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //오른쪽 상단 디버그 띠 삭제하는기능
      title: 'Woong',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800], //배경색 지정
      appBar: AppBar(
        title: Text('Woong'),
        backgroundColor: Colors.amber[700],
        elevation: 0.0, //appBar가 띄워져있는 느낌 삭제
        centerTitle: true,  //title이 가운데로 오게끔 하는것.
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //가로축 정렬
          children: [
            Center( //가로축 중간 정렬
              child: CircleAvatar(  //사진 삽입
                backgroundImage: AssetImage('assets/Around_1007_DSC01472.jpg'), //사진 삽입
                radius: 60.0, //사진 크기 결정
              ),
            ),
            Divider(  //분할 선 그리기
              height: 80.0, //선을 기준으로 위, 아래 위젯들의 간격
              color: Colors.grey[850],  //분할선의 색 지정
              thickness: 1.0, //분할 선의 두께 지정
              endIndent: 30.0,  //분할 선 오른쪽 끝부분을 얼마나 띄울것인가
            ),
            Text('Name',
            style: TextStyle( //Text의 스타일 지정
              color: Colors.white,   //text 색 지정
              letterSpacing: 2.0    //글자들의 간격 설정
            ),
            ),
            SizedBox( //위 아래 위젯들 사이의 간격 지정
              height: 10.0,
            ),
            Text('Woong',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30.0,
            ),
            Text('Woong Power Level',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 30.0,
            ),
            Row(  //이 안에 있는 위젯들은 가로로 나열
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Devil Press',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Butterfly Pull-up',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Toes-to-bar',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[850],
              thickness: 1.0,
              endIndent: 30.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Around_1007_DSC01630.jpg'),
                radius: 50.0,

              ),
            )
          ],
        ),
      ),
    );
  }
}


