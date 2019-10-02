import 'package:flutter/material.dart';


class BottomAppButton extends StatelessWidget {

  BottomAppButton({Key key, this.title, this.path}) : super(key: key);

  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: InkWell(
          onTap: () => {Navigator.pushNamed(context, this.path)},
          child: Container(
            child : Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        )

    );
  }

}