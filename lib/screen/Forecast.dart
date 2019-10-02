import 'package:cpro_forecast/widget/BottomForecastBar.dart';
import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/weather.png"),
                  fit: BoxFit.cover,
                )
            ),
            child:Center(
              child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "What is the weather today ? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
        ),
        bottomNavigationBar: BottomForecastBar()
    );
  }
}