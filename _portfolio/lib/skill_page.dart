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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 36,
            children: [
              Expanded(
                child: SkillCard(
                  title: 'Hard skills :',
                  body:
                      'C++\nC#\nPython\nSwift\nKotlin\nHTML\nCSS\nJavaScript\nDart\nFlutter\nGodotScript\nGit',
                ),
              ),
              Expanded(
                child: SkillCard(
                  title: 'Soft skills :',
                  body:
                      'Creativity\nProblem-solving\nAdaptability\nCommunication\nTeamwork\nLeadership\nTime Management\nWork Ethic\nInterpersonal Skills\nAttention to Detail',
                ),
              ),
              Expanded(
                child: SkillCard(
                  title: 'Languages :',
                  body: 'Ukrainian\nEnglish\nRussian\nPolish',
                ),
              ),
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
