import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //static widget앞에 const를 붙여줘야함.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  //const MyPage({Key? key}) : super(key: key);

  @override //BuildContext : widget tree에서 현제 wdget의 위치를 알 수 있는 정보
  Widget build(BuildContext context) {
    //build함수는 Scaffold라는 위젯을 리턴하는데 이때 위젯트리상에서 어디에 위치하는가에 대한 정보를 가지고있는 context라는것을
    return Scaffold(
        //넣어서 리턴해준다.
        appBar: AppBar(
          title: Text('Who is the best sexy guy'),
          centerTitle: true,
          elevation: 0.0,
          actions: [
            //복수의 아이콘 버튼 등을 오른쪽에 배치할 때
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                //함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳
                print('Shopping cart button is clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search button is clicked');
              },
            )
          ],
        ),
        drawer: Drawer(
          //자동으로 appBar왼쪽에 메뉴버튼 생성, 클릭하면 프로필 등을 볼 수 있는것처럼 된다.
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                //사용자의 사진과 정보가 적혀져있는 박스
                currentAccountPicture: CircleAvatar(
                  //사진을 삽입하기 위해서 사용하는 CircleAvatar
                  backgroundImage: AssetImage('assets/woong2.jpg'),
                ),
                otherAccountsPictures: [
                  //다른 계정의 사진을 보여줌.
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/woong1.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/woong3.jpg'),
                  )
                ],
                accountName: Text('Sexy Woong'),
                accountEmail: Text('kju2405@naver.com'),
                onDetailsPressed: () {
                  //이름과 이메일 옆에 더 세부적인 정보를 볼 수 있는 조그만한 삼각형 아이콘
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    )),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(
                  Icons.add, //leading이 왼쪽에 아이콘을 넣는것이라면 trailing은 오른쪽에 아이콘을 넣는것.
                  color: Colors.grey[850],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Settings'),
                onTap: () {
                  print('Settings button is clicked');
                },
                trailing: Icon(
                  Icons.add,
                  color: Colors.grey[850],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                trailing: Icon(
                  Icons.add,
                  color: Colors.grey[850],
                ),
                onTap: () {
                  print('Q&A button is clicked');
                },
              )
            ],
          ),
        ),
        body: MySnackBar() //Center(
        //   child: TextButton(
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //         content: Text('Sexy Woong'),
        //         action: SnackBarAction(
        //           label: 'you too',
        //           onPressed: () {
        //             print('Snack bar is clicked');
        //           },
        //         ),
        //         duration: Duration(seconds: 2),
        //       ));
        //     },
        //     child: Text(
        //       'Woong',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all(Colors.red)),
        //   ),
        // ),
        );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              'Sexy Woong',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white
              ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(seconds: 2),
            action: SnackBarAction(
              label: 'Woong',
              textColor: Colors.white,
              onPressed: () {
                print('The best sexy guy is Woong');
              },
            ),

          ));
        },
        child: Text('Wonderful Woong'),
      ),
    );
  }
}
