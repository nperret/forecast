import 'package:flutter/material.dart';


class BottomAppButton extends StatelessWidget {

  BottomAppButton({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: Container(
            child : Text(this.title)
        )
    );
  }

}