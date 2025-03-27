import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart'as http;

const apiKey ="a103d75c8cab9d4db0ace3461cfa884a";

class Location{
  late double latitude;
  late double longitude;

 Future <void> getCurrentLocation()async{
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition();
      latitude =position.latitude;
      longitude =position.longitude;
    }
    catch(e){
      print(e);
    }
  }
}

var latitude;
var longitude;

void getLocation()async{
  Location location=Location();
  await location.getCurrentLocation();
  latitude = location.latitude;
  longitude = location.longitude;
  getdata();
}



void getdata()async{
  http.Response response=await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'));
  if(response.statusCode==200){
    var data =response.body;

    var weather = jsonDecode(data)['weather'][0]['main'];
    var temprature = jsonDecode(data)['main']['temp'];
    var city = jsonDecode(data)['name'];

    print(weather);
    print(temprature);
    print(city);
  }
  else{
    print(response.statusCode);
  }
}



