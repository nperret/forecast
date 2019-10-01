import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeButton extends StatelessWidget {

  HomeButton({Key key, this.title, this.pictureUrl}) : super(key: key);

  final String title;
  final String pictureUrl;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {print('You tap this GestureDetector component')},
      child: Container(
        color: Colors.yellow,
        width: 336,
        height: 160,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SvgPicture.asset(
              this.pictureUrl,
              height: 47.48,
              width: 132.96,),
            Text(
                this.title,
                style: TextStyle(
                    color: const Color.fromRGBO(64, 68, 145, 1.0),
                    fontSize: 22,)
            ),

          ],
        )

      ),
    );
  }
}
