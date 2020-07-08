import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/on_tap_bloc.dart';

class Button extends StatefulWidget {
  final String number;

  Button(this.number);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    var bloc = context.bloc<OnTapBloc>();
    return InkWell(
      onTap: () {
        bloc.add(ButtonTappedEvent(value: widget.number));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.15,
        child: Card(
          child: Center(
            child: Text(
              widget.number,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
