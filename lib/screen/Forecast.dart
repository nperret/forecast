import 'package:cpro_forecast/widget/BottomForecastBar.dart';
import 'package:cpro_forecast/widget/InformationBloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  Container(
                    child: Row(
                      children:<Widget>[
                      Text('An arrow'),
                      Column(
                          children: <Widget>[
                            Text('Lyon',
                                style: TextStyle(
                                    fontSize: 44,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                )),
                            Text('Jeudi 3 Oct',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white
                                ))
                          ]
                      )
                      ],
                    ),
                  ),
                  Container(
                    height: 264,
                    width: 336,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.all(new Radius.circular(12)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/Cloud-Rain-Sun.svg',
                                color: const Color.fromRGBO(64, 68, 145, 1),
                                height: 91,
                                width: 82,),
                              Container(
                                width: 140,
                                child: Text(
                                    'Pluie avec éclaircies',
                                    style: TextStyle(
                                        color: Color.fromRGBO(64, 68, 145, 1),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800
                                    )
                                )
                              ),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              Text(
                                '22°c',
                                style: TextStyle(
                                  fontSize: 72,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(64, 68, 145, 1),
                                )
                              ),
                              Text('Temperature')
                            ],
                          )
                        ],
                      )
                    )
                  ),
                  Row(
                    children: <Widget>[
                      InformationBloc(logo: 'assets/Wind.svg', content: '5km/h'),
                      InformationBloc(logo: 'assets/Cloud-Rain-Sun-Alt.svg', content: '55%')

                    ],
                  ),
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