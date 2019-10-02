import 'package:flutter/material.dart';
import '../widget/HomeButton.dart';
import '../widget/BottomAppButton.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/weather.png"),
                fit: BoxFit.cover,
              )
            ),
            child:Column(
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
                    pictureUrl: ''
                ),
              ],
            ),
          )
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            children: <Widget>[
              BottomAppButton(
                  title: 'Weather'
              ),
              BottomAppButton(
                  title: 'History'
              ),
            ],
          ),
        )
    );
  }
}