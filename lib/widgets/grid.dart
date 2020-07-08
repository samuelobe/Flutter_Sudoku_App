import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/on_tap_bloc.dart';

import 'tile.dart';

class Grid extends StatefulWidget {
  Grid({Key key}) : super(key: key);

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  List<Widget> _getGrid(int selectedIndex) {
    var widgetList = <Widget>[];
    for (var i = 0; i < 81; i++) {
      var xPos = i ~/ 9;
      var yPos = i % 9;
      widgetList.add(Tile(
        index: i,
        xPos: xPos,
        yPos: yPos,
      ));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnTapBloc, OnTapState>(
      builder: (context, state) {
        var selectedIndex;
        if (state is TappedState) {
          selectedIndex = state.index;
        }

        var grid = _getGrid(selectedIndex);
        return Center(
          child: GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 9,
            ),
            children: grid,
          ),
        );
      },
    );
  }
}
