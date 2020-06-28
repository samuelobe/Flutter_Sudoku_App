import 'package:flutter/material.dart';

import 'tile.dart';

class Grid extends StatefulWidget {
  Grid({Key key}) : super(key: key);

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  List<Widget> _getGrid() {
    var widgetList = <Widget>[];
    for (var i = 0; i < 81; i++) {
      var xPos = i ~/ 9;
      var yPos = i % 9;
      widgetList.add(Tile(
        index: i.toDouble(),
        xPos: xPos,
        yPos: yPos,
      ));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    var grid = _getGrid();
    return Center(
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 9,
        ),
        children: grid,
      ),
    );
  }
}
