import 'package:flutter/material.dart';

import 'button.dart';

class Buttons extends StatefulWidget {


  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Button("1"),
        Button("2"),
        Button("3"),
        Button("4"),
        Button("5"),
        Button("6"),
        Button("7"),
        Button("8"),
        Button("9"),
      ],
    );
  }
}
