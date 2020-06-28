import 'package:flutter/material.dart';

import 'button.dart';

class SecondRowButtons extends StatefulWidget {
  SecondRowButtons({Key key}) : super(key: key);

  @override
  _SecondRowButtonsState createState() => _SecondRowButtonsState();
}

class _SecondRowButtonsState extends State<SecondRowButtons> {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        Button("6"),
        Button("7"),
        Button("8"),
        Button("9"),
      ],
    );
  }
}
