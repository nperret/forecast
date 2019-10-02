import 'package:cpro_forecast/widget/BottomAppButton.dart';
import 'package:flutter/material.dart';


class BottomForecastBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      child: new Row(
        children: <Widget>[
          BottomAppButton(
              title: 'Home',
              path: '/'
          ),
          Container(
            height: 40,
            child: VerticalDivider(
              color: Colors.black,
            ),
          ),
          BottomAppButton(
              title: 'Weather',
              path: '/forecast'
          ),
          Container(
            height: 40,
            child: VerticalDivider(
              color: Colors.black,
            ),
          ),
          BottomAppButton(
              title: 'History',
              path: '/history'
          ),
        ],
      ),
    );
  }

}