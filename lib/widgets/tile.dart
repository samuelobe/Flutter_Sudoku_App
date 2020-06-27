import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  Tile({Key key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Container(
            child: TextField(
              decoration: InputDecoration(
                counterText: "",
              ),
              maxLength: 1,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1))));
  }
}
