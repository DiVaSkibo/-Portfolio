import 'standarts.dart';
import 'card_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: COLOR_MAIN_SHADE,
        brightness: Brightness.dark,
        textTheme: TextTheme(bodyMedium: const TextStyle(fontSize: 18)),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
        ),
      ),
      home: CardPage(),
    );
  }
}
