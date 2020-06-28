import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({Key key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Card(
          child: Text(
            "1",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "2",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "3",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "4",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "5",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "6",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "7",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "8",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Card(
          child: Text(
            "9",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
