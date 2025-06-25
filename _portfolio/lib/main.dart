import 'package:_portfolio/standarts.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: COLOR_MAIN_SHADE,
        appBar: AppBar(
          backgroundColor: COLOR_MAIN,
          leading: IconButton(
            onPressed: () => print('-> boy'),
            icon: Icon(Icons.accessibility, size: 36, color: COLOR_ACCENT),
          ),
        ),
        body: Center(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('-> up'),
          backgroundColor: COLOR_ACCENT,
          shape: CircleBorder(),
          child: Center(
            child: Icon(
              Icons.arrow_drop_up,
              size: 54,
              color: COLOR_ACCENT_SHADE,
            ),
          ),
        ),
      ),
    );
  }
}
