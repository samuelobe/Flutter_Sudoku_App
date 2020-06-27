import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  final double index;

  Tile({this.index});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  String text = "";
  Border _getBorder() {
    var firstColRange = [2,11,20,29,38,47,56,65,74];
    var secondColRange = [5,14,23,32,41,50,59,68,77];
    var index = widget.index;
    double top = 1;
    double bottom = 1;
    double left = 1;
    double right = 1;
    if ((index >= 18 && index <= 26) || index >= 45 && index <= 53) {
      bottom = 4;
    }
    if (firstColRange.contains(index) || secondColRange.contains(index)){
      right = 4;
    }

    return Border(
        top: BorderSide(width: top),
        bottom: BorderSide(width: bottom),
        left: BorderSide(width: left),
        right: BorderSide(width: right));
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Container(
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
              onSubmitted: (input) {
                text = input;
                print(text);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                counterText: "",
              ),
              maxLength: 1,
            ),
            decoration: BoxDecoration(border: _getBorder())));
  }
}
