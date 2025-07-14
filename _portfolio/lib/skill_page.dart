import 'package:_portfolio/__widgets.dart';
import 'package:_portfolio/_skill_card.dart';

import '__tools.dart';
import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTool.mainShade,
      appBar: AppBar(
        backgroundColor: ColorsTool.main,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/cards'),
          icon: Icon(Icons.accessibility, size: 36, color: ColorsTool.accent),
        ),
        title: Row(
          spacing: 27,
          children: [
            TextButton(
              onPressed: () => print('-> skills page'),
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
        child: Padding(
          padding: EdgeInsetsGeometry.all(36),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 36,
            runSpacing: 36,
            children: [
              SkillCard(
                title: 'Hard skills :',
                body: [
                  Attribute(text: 'C++', level: Level.expert),
                  Attribute(text: 'C#', level: Level.intermediate),
                  Attribute(text: 'Python', level: Level.advanced),
                  Attribute(text: 'Swift', level: Level.beginner),
                  Attribute(text: 'Kotlin', level: Level.beginner),
                  Attribute(text: 'HTML', level: Level.advanced),
                  Attribute(text: 'CSS', level: Level.advanced),
                  Attribute(text: 'JavaScript', level: Level.advanced),
                  Attribute(text: 'Dart', level: Level.intermediate),
                  Attribute(text: 'Flutter', level: Level.intermediate),
                  Attribute(text: 'GodotScript', level: Level.expert),
                  Attribute(text: 'Git', level: Level.advanced),
                ],
              ),
              SkillCard(
                title: 'Soft skills :',
                body: [
                  Attribute(text: 'Creativity'),
                  Attribute(text: 'Problem-solving'),
                  Attribute(text: 'Adaptability'),
                  Attribute(text: 'Communication'),
                  Attribute(text: 'Teamwork'),
                  Attribute(text: 'Leadership'),
                  Attribute(text: 'Attention to Detail'),
                ],
              ),
              SkillCard(
                title: 'Languages :',
                body: [
                  Attribute(text: 'Ukrainian', level: Level.fluent),
                  Attribute(text: 'English', level: Level.intermediate),
                  Attribute(text: 'Russian', level: Level.upperIntermediate),
                  Attribute(text: 'Polish', level: Level.intermediate),
                ],
              ),
              Spacer(),
            ],
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
