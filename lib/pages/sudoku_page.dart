import 'package:flutter/material.dart';

import '../widgets/buttons.dart';
import '../widgets/grid.dart';

class SudokuPage extends StatefulWidget {
  @override
  _SudokuPageState createState() => _SudokuPageState();
}

class _SudokuPageState extends State<SudokuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sudoku Page')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Grid(),
            SizedBox(
              height: 50,
            ),
            Buttons()
          ],
        ));
  }
}
