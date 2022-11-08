import 'dart:io';

void main(){
  showData();
}

void showData()async{
  startTask();
  String account=await accessData();
  fetchData(account);
}

void startTask(){
  String info1='요청수행 시작';
  print(info1);
}

Future<String> accessData() async{
  String account='';

  Duration time=Duration(seconds: 3);

  if(time.inSeconds>2){
    //sleep(time);
    await Future.delayed(time,(){       //Future.delayed()의 매개변수로서 Duration 객체와 함수가 온다.
      account='8,500만원';
      print(account);
    });

  }else{
    account='데이터를 가져왔습니다.';
    print(account);
  }

  return account;
}

void fetchData(String account){
  String info3='잔액은 $account 입니다.';
  print(info3);
}