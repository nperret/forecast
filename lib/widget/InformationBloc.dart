import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class InformationBloc extends StatelessWidget {

  InformationBloc({Key key, this.logo, this.content}) : super(key: key);

  final String logo;
  final String content;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
          width: 159,
          height: 80,
          margin: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(12)),
            color: Colors.white,

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                this.logo,
                color: const Color.fromRGBO(112, 112, 112, 1),
                height: 28,
                width: 44,),
              Text(
                  this.content,
                  style: TextStyle(
                    color: const Color.fromRGBO(112, 112, 112, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),

            ],

          )

      );
  }
}
