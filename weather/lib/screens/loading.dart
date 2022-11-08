import 'package:flutter/material.dart';
import 'package:weather/data/my_location.dart';
import 'package:weather/data/network.dart';
import 'package:weather/screens/weather_screen.dart';

const apikey = 'f48662318bff7c15f94fd4ad3659975f';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late double latitude3;
  late double longitude3;

  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    MyLoaction myLoaction = MyLoaction();
    await myLoaction.getMyCurrentLoaction();
    latitude3 = myLoaction.latitude;
    longitude3 = myLoaction.longitude;
    print('latitude3 : $latitude3');
    print('longitude3 : $longitude3');

    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?lat=${latitude3}&lon=${longitude3}&appid=${apikey}&units=metric&lang={lang}',
        'http://api.openweathermap.org/data/2.5/air_pollution?lat=${latitude3}&lon=${longitude3}&appid=${apikey}');

    var weatherData = await network.getJsonData();
    print(weatherData);

    var airData=await network.getAirData();
    print(airData);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        parseWeatherData: weatherData,
        parseAirData: airData,
      );
    }));
  }

  // void fetchData()async{
  //   http.Response response= await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
  //   if(response.statusCode == 200){
  //     String jsonData=response.body;  //json 전제 데이터 가져오기.
  //     var parsingData=jsonDecode(jsonData);
  //     var myJson=parsingData['weather'][0]['description'];
  //     var jsonWind=parsingData['wind']['speed'];
  //     var jsonId=parsingData['id'];
  //     print(myJson);
  //     print(jsonWind);
  //     print(jsonId);
  //   }else{
  //     print(response.statusCode);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Get my location'),
          onPressed: () {
            getLocation();
          },
        ),
      ),
    );
  }
}
