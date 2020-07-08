import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            ClayContainer(
                child: Text(
              "SUDOKU",
              style: TextStyle(fontSize: 50),
            )),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Card(
                  child: ListTile(
                    title: Text("Easy"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Medium"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Hard"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
