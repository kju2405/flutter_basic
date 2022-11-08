import 'package:geolocator/geolocator.dart';

class MyLoaction{
  late double latitude;
  late double longitude;

  Future<void> getMyCurrentLoaction() async{
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude=position.latitude;
      longitude=position.longitude;
      print('latitude : $latitude');
      print('longigude : $longitude');
    }catch(e){
      print('There was a problem with the internet connection.');
    }
  }
}