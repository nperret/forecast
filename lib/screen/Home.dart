import 'package:cpro_forecast/widget/BottomForecastBar.dart';
import 'package:flutter/material.dart';
import '../widget/HomeButton.dart';


class Home extends StatelessWidget {

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
                  'Hello World!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Choose your category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                )),

                HomeButton(
                    title: 'Weather Forecast',
                    pictureUrl: 'assets/homeGlasses.svg'
                ),
                HomeButton(
                    title: 'History',
                    pictureUrl: 'assets/history-clock-button.svg'
                ),
              ],
            ),
          )
        ),
        bottomNavigationBar: BottomForecastBar()
    );
  }
}