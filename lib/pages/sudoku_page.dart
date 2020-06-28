import 'package:flutter/material.dart';

import '../widgets/tile.dart';

class SudokuPage extends StatefulWidget {
  @override
  _SudokuPageState createState() => _SudokuPageState();
}

class _SudokuPageState extends State<SudokuPage> {
  List<List<int>> gridList = [];

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
    return Scaffold(
        appBar: AppBar(title: Text('Sudoku Page')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 9,
                ),
                children: grid,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
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
            )
          ],
        ));
  }
}
