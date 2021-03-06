import 'package:flutter/material.dart';

import '../widgets/tile.dart';

class SudokuPage extends StatefulWidget {
  @override
  _SudokuPageState createState() => _SudokuPageState();
}

class _SudokuPageState extends State<SudokuPage> {
  List<Widget> _getGrid() {
    var gridList = <Widget>[];
    for (double i = 0; i < 81; i++) {
      gridList.add(Tile(index: i,));
    }
    return gridList;
  }

  @override
  Widget build(BuildContext context) {
    var grid = _getGrid();
    return Scaffold(
        appBar: AppBar(title: Text('Sudoku Page')),
        body: Center(
          child: GridView(
            shrinkWrap: true,
            //padding: EdgeInsets.only(top: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 9,
            ),
            children: grid,
          ),
        ));
  }
}
