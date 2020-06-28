import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String number;

  Button(this.number);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.height*0.045,
        child: Center(
          child: Text(
            widget.number,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}


