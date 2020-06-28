import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/on_tap_bloc.dart';

class Tile extends StatefulWidget {
  final double index;
  final int xPos;
  final int yPos;

  Tile({this.index, this.xPos, this.yPos});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  String text = "";

  Border _getBorder() {
    var firstColRange = [2, 11, 20, 29, 38, 47, 56, 65, 74];
    var secondColRange = [5, 14, 23, 32, 41, 50, 59, 68, 77];
    var index = widget.index;
    var top = 1;
    var bottom = 1;
    var left = 1;
    var right = 1;
    if ((index >= 18 && index <= 26) || index >= 45 && index <= 53) {
      bottom = 4;
    }
    if (firstColRange.contains(index) || secondColRange.contains(index)) {
      right = 4;
    }

    return Border(
        top: BorderSide(width: top.toDouble()),
        bottom: BorderSide(width: bottom.toDouble()),
        left: BorderSide(width: left.toDouble()),
        right: BorderSide(width: right.toDouble()));
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.bloc<OnTapBloc>();
    return BlocBuilder<OnTapBloc, OnTapState>(
      builder: (context, state) {
        return InkWell(
          highlightColor: Colors.blue,
          onTap: () {
            bloc.add(TileTappedEvent(xPos: widget.xPos, yPos: widget.yPos));
          },
          child: GridTile(
              child:
                  Container(decoration: BoxDecoration(border: _getBorder()))),
        );
      },
    );
  }
}
