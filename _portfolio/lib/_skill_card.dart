import '__tools.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final String title;
  final String body;

  const SkillCard({super.key, required this.title, required this.body});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(36),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsTool.main,
      ),
      child: Column(children: [Text(widget.title), Text(widget.body)]),
    );
  }
}
