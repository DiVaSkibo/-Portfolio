import '__tools.dart';
import '_event_card.dart';
import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTool.mainShade,
      appBar: AppBar(
        backgroundColor: ColorsTool.main,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/person'),
          icon: Icon(Icons.accessibility, size: 36, color: ColorsTool.accent),
        ),
        title: Row(
          spacing: 27,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/skills'),
              child: Text('Skills'),
            ),
            TextButton(
              onPressed: () => print('-> Experience'),
              child: Text('Experience'),
            ),
            TextButton(
              onPressed: () => print('-> Projects'),
              child: Text('Projects'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.all(36),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 36,
              runSpacing: 36,
              children: [
                EventCard(
                  event: 'Ctrl+Alt+Disinfo',
                  role: 'Game Development, Music',
                  experiences: [
                    'Developed 2D game using GodotEngine;',
                    'Made music for the project using FL Studio;',
                    'Worked with the team.',
                  ],
                ),
                EventCard(
                  event: 'Snappy Gurus Game Off',
                  role: 'Game Development, Music',
                  experiences: [
                    'Developed 2D game using GodotEngine;',
                    'Made music for the project using FL Studio;',
                    'Worked with the team.',
                  ],
                ),
                EventCard(
                  event: 'Global Game Jam 2024',
                  role: 'Game Development, Music',
                  experiences: [
                    'Developed 2D game using GodotEngine;',
                    'Made music for the project using FL Studio;',
                    'Worked with the team.',
                  ],
                ),
                EventCard(
                  event: 'Global Game Jam 2023',
                  role: '2D Art, 2D Animation, Music',
                  experiences: [
                    'Designed 2D game using Krita;',
                    'Made music for the project using FL Studio;',
                    'Worked with the team.',
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('-> up'),
        backgroundColor: ColorsTool.accent,
        shape: CircleBorder(),
        child: Center(
          child: Icon(
            Icons.arrow_drop_up,
            size: 54,
            color: ColorsTool.accentShade,
          ),
        ),
      ),
    );
  }
}
