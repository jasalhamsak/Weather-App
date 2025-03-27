import 'package:flutter/material.dart';

class weatherPage extends StatefulWidget {
  const weatherPage({super.key});

  @override
  State<weatherPage> createState() => _weatherPageState();
}

class _weatherPageState extends State<weatherPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/weather.png",height: 300,),
        SizedBox(height: 100,),
          Text(
            "mavoor",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins Regular'),
          ),
        Text(
          "cloudy",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins Regular'),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "30",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins Bold'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    "o",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins Bold'),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
