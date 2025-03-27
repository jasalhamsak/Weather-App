import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  void getlocation()async{
    await Geolocator.checkPermission();
   await Geolocator.requestPermission();
    Position? position = await Geolocator.getLastKnownPosition();
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/weather.png",
            height: 250,
          ),
          Text(
            "Weather\nForecasting",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins Bold'),
          ),
          SizedBox(
            height: 150,
          ),
          GestureDetector(
            onTap: (){
              getlocation();
            },
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent
              ),
              child: Text("Check Weather",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins Regular'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
