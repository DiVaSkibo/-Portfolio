import 'package:_portfolio/__tools.dart';
import 'package:_portfolio/person_page.dart';
import 'package:_portfolio/skill_page.dart';
import 'package:_portfolio/experience_page.dart';
import 'package:_portfolio/project_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsTool.mainShade,
        brightness: Brightness.dark,
        textTheme: TextTheme(bodyMedium: StyleTool.basic),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: StyleTool.buttonText,
          ),
        ),
      ),
      initialRoute: '/person',
      routes: {
        '/person': (context) => const CardPage(),
        '/skills': (context) => const SkillPage(),
        '/experience': (context) => const ExperiencePage(),
        '/projects': (context) => const ProjectPage(),
      },
    );
  }
}
