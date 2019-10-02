import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeButton extends StatelessWidget {

  HomeButton({Key key, this.title, this.pictureUrl, this.path}) : super(key: key);

  final String title;
  final String pictureUrl;
  final String path;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pushNamed(context, this.path)},
      child: Container(
        width: 336,
        height: 160,
        margin: const EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(20)),
          color: Colors.white,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              this.pictureUrl,
              color: const Color.fromRGBO(64, 68, 145, 1.0),
              height: 47.48,
              width: 132.96,),
            Text(
                this.title,
                style: TextStyle(
                    color: const Color.fromRGBO(64, 68, 145, 1.0),
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    )
            ),

          ],

        )

      ),
    );
  }
}
