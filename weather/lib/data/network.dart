import 'package:http/http.dart' as http;
import 'dart:convert';    //json parsing -> jsonDecode()사용 가능.

class Network{
  late final String url;
  late final String url2;
  Network(this.url,this.url2);

  Future<dynamic> getJsonData() async{
    http.Response response= await http.get(Uri.parse(url));
    if(response.statusCode == 200) {  //data를 제대로 가져옴.
      String jsonData = response.body; //json 전제 데이터 가져오기.
      var parsingData = jsonDecode(jsonData);
      return parsingData;
    }

  }

  Future<dynamic> getAirData() async{
    http.Response response= await http.get(Uri.parse(url2));
    if(response.statusCode == 200) {  //data를 제대로 가져옴.
      String jsonData = response.body; //json 전제 데이터 가져오기.
      var parsingData = jsonDecode(jsonData);
      return parsingData;
    }

  }
}