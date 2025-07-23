import '__tools.dart';
import 'person_page.dart';
import 'skill_page.dart';
import 'experience_page.dart';
import 'project_page.dart';
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
        textTheme: TextTheme(bodyMedium: const TextStyle(fontSize: 18)),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
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
