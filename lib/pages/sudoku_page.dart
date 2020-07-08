import 'package:flutter/material.dart';

import '../widgets/first_row_buttons.dart';
import '../widgets/grid.dart';
import '../widgets/second_row_buttons.dart';

class SudokuPage extends StatefulWidget {
  @override
  _SudokuPageState createState() => _SudokuPageState();
}

class _SudokuPageState extends State<SudokuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Grid(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          FirstRowButtons(),
          SecondRowButtons(),
        ],
      ),
    ));
  }
}
