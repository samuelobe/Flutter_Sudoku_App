import 'package:flutter/material.dart';

import 'button.dart';

class FirstRowButtons extends StatefulWidget {
  FirstRowButtons({Key key}) : super(key: key);

  @override
  _FirstRowButtonsState createState() => _FirstRowButtonsState();
}

class _FirstRowButtonsState extends State<FirstRowButtons> {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        Button("1"),
        Button("2"),
        Button("3"),
        Button("4"),
        Button("5")
      ],
    );
  }
}
