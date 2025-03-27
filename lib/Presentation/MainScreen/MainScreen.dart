import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:weather_app/Presentation/weather%20Page/weatherPage.dart';
import '../../Components/components.dart';
import 'dart:convert';



class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});

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
            onTap: () {
              getLocation();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => weatherPage(),));
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