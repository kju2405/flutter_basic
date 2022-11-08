import 'package:flutter/material.dart';
import 'package:the_latest_tech/environment.dart';
import 'package:the_latest_tech/environment_page.dart';
import 'package:the_latest_tech/new.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:the_latest_tech/environment.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //StatefulWidget은 StatefulWidget(immutable), State(mutable)로 이루어져있음.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Farm',
      initialRoute: '/',
      routes: {
        '/': (context) => Settings(),
        '/new': (context) => New(),
      },
    );
  }
}

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  static List<String> titleList = ['Setting 1', 'Setting 2'];
  static List<String> temperatureList = ['15', '17'];
  static List<String> humadityList = ['23', '16'];
  static List<String> soilMoistureList = ['23', '16'];
  static List<String> daylightList = ['23', '16'];

  List<Environment> environmentData = List.generate(
      titleList.length,
      (index) => Environment(titleList[index], temperatureList[index],
          humadityList[index], soilMoistureList[index], daylightList[index]));

  TextEditingController name =
      TextEditingController(); //TextField에서 입력된 값을 가져올때 사용함.
  TextEditingController temperature =
      TextEditingController(); //더이상 사용하지 않을때는 리소스의 낭비를 막기위해서 dispose()메서드를 호출함.
  TextEditingController humidity = TextEditingController();
  TextEditingController soil_moisture = TextEditingController();
  TextEditingController daylight = TextEditingController();
  bool status = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0.2,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/new');
              },
              icon: Icon(Icons.add_box_rounded))
        ],
      ),
      body: ListView.builder(
        itemCount: environmentData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditingPage(environment: environmentData[index],)));
                debugPrint(titleList[index]);
              },
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: IntrinsicHeight(
                    //이것이 없으면 VerticalDivider가 나타나지않음.
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        const VerticalDivider(
                          width: 5.0,
                          thickness: 2.0,
                          indent: 5.0,
                          endIndent: 5.0,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Temperature ${temperatureList[index]}°C',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Humadity ${humadityList[index]}%',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Soil Moisture ${soilMoistureList[index]}%',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'daylight ${daylightList[index]} lx',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.black87,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
