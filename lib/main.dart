import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/on_tap_bloc.dart';
import 'pages/settings_page.dart';
import 'pages/sudoku_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTab = 0;

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.public), title: Text('Sudoku Page')),
    BottomNavigationBarItem(
        icon: Icon(Icons.public), title: Text('Settings Page')),
  ];

  final List<Widget> _pages = [
    BlocProvider(create: (context) => OnTapBloc(), child: SudokuPage()),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sudoku App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: IndexedStack(
            children: _pages,
            index: _selectedTab,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: _items,
            currentIndex: _selectedTab,
            onTap: (index) {
              setState(() {
                _selectedTab = index;
              });
            },
          ),
        ));
  }
}
