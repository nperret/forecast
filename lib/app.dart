import 'package:cpro_forecast/screen/Forecast.dart';
import 'package:cpro_forecast/screen/History.dart';
import 'package:flutter/material.dart';
import 'screen/Home.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat'
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return Home();
        },
        '/forecast': (BuildContext context){
          return Forecast();
        },
        '/history': (BuildContext context){
          return History();
        }
      },
    );
  }
}